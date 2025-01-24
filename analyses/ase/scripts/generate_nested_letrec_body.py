# Generate a Scheme program containing maining nested letrec
# expressions. This pushes the interpreter to have many allocations
# for continuations as well as many store locations and writes.
# This seems to trigger a performance regression in the interpreter.

NESTING_LEVEL = 2000

print(f"(letrec ((x0 0))")
for i in range(1, NESTING_LEVEL): 
    print(" "*i, end="")
    print(f"(letrec ((x{i} (+ x{i-1} 1)))")

print(f"x{i}")

print(")"*(NESTING_LEVEL))

