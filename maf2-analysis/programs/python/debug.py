def boom():
    pass #stub implementation

db = Database()

output_config = {
    'strain_classified': 'str_resampled',
    'bolt_strain_classified': 'bolt_str_resampled',
}

def query_compute_write(measurement):
    for location in [1,2,3]:
            if db.read(measurement).empty():
                continue 
            foo = 0  
            boom() 
            bar = 1           

def main():   
    query_compute_write('strain_classified')
    query_compute_write('bolt_strain_classified')

main()