import subprocess 
import math
from multiprocessing import cpu_count
#import psutil
from threading import Thread
from queue import Queue
from itertools import product
import time

def retrieve_configurations(): 
    """
    Boot a worker and asks its available configurations
    """

    p = subprocess.Popen(["cabal", "run", ".", "--", "benchmark", "-o", "dummy.csv", "-d"], stdin = subprocess.DEVNULL, stdout=subprocess.PIPE, encoding = "utf8")
    configurations = p.stdout.readlines()
    p.wait()
    return [ c.strip() for c in configurations ]

class Worker():
    def __init__(self):
        self.__available = True
        self.__process = None

    def start(self, name):
         benchmark_output_name = time.strftime("%Y-%m-%d")
         self.__process = subprocess.Popen(["tuna", "run", "-c", str(name),  " ".join(["cabal", "run", ".", "--", "benchmark", "-o", f"output/output-{benchmark_output_name}-worker-{name}.csv"])], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, encoding = "utf8")

    def submit_task(self, program_name, configuration):
        """
        Submit the program to analyze itself under the 
    given configuration.
        """
        self.__process.stdin.write(configuration+";"+program_name+"\n")
        self.__process.stdin.flush()

    def is_available(self):
        """
        Returns true if the worker is available
        """
        return self.__available

    def wait_until_available(self):
        """
        Block until the worker becomes available
        """
        while True:
            line = self.__process.stdout.readline()
            print(line, flush = True, end='')
            if line.startswith("[D]"):
                break
            

    def wait(self):
        """
        Wait until the worker has fully completed
        """
        self.__process.wait()

class WorkerPool():
    def __init__(self, num_workers): 
        self.__num_workers = num_workers
        self.__workers = []
        self.__available_workers = Queue(maxsize=num_workers)
    
    def start(self):
        for n in range(1, self.__num_workers+1): 
            worker = Worker()
            self.__available_workers.put(worker)
            self.__workers.append(worker)
            worker.start(f"{n}")


    def submit_task(self, program_name, configuration):
        def _wait(worker): 
            # block the thread until the worker is available
            worker.wait_until_available()
            # put the worker back into the queue of workers
            self.__available_workers.put(worker)

        """
        Submit a task to an available worker
        """
        worker = self.__available_workers.get()
        worker.submit_task(program_name, configuration)
        t = Thread(target=_wait, args=(worker,))
        t.start()
            
    def wait_all(self): 
        for worker in self.__workers: 
            worker.wait()

NUM_WORKERS = 1
PROGRAMS = [ l.strip() for l in open("benchmarks.txt").readlines() ]

print("[*] Booting ... ")
print("[*] Found the following configurations: ")
config = retrieve_configurations()
print(config)
print("[*] Starting workers")

pool = WorkerPool(NUM_WORKERS)
pool.start()
for (program, config) in product(PROGRAMS, config): 
    print(f"[*] Running analysis on {program} with {config}")
    pool.submit_task(program, config)
