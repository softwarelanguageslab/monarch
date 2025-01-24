
MAX_BINDINGS = 2000
print("(letrec ((x0 (input))")

for i in range(1, MAX_BINDINGS):
    print(f"(x{i} (+ x{i-1} 1))")

print(f") x{i})")

