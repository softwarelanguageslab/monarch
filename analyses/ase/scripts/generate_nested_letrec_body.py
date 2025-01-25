# Generate a Scheme program containing maining nested letrec
# expressions. This pushes the interpreter to have many allocations
# for continuations as well as many store locations and writes.
# This seems to trigger a performance regression in the interpreter.

NESTING_LEVEL = 2000

print(f"(letrec ((x0 0))")
for i in range(1, NESTING_LEVEL): 
    print(" "*i, end="")
    print(f"(letrec ((x{i} (letrec ((z (input)) (z1 (= z 0))) (if z1 (letrec ((r ((lambda () x{i-1})))) r) 2))))")

print(f"x{i}")

print(")"*(NESTING_LEVEL))

