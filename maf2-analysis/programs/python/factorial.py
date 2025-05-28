import sys

def trace_assignments(frame, event, arg):
    if event == "line":
        code = frame.f_code
        line_number = frame.f_lineno
        line = frame.f_globals.get("__file__", "<string>")
        print(f"Line {line_number}: {frame.f_locals}")
    return trace_assignments

sys.settrace(trace_assignments)

def fac(n): 
    if n == 0:
        return 1
    else: 
        return n * fac(n-1)
    
result = fac(n=5)
print(result)

sys.settrace(None)