# Generates a nested letrec expression where the nesting happens in the binding expression 
# rather than in the body (see `generate_nested_letrec_body` for this variant).

MAX_NESTING = 800

def generate(dependent_i):
    if dependent_i > MAX_NESTING: 
        print(MAX_NESTING)
    else:
        i = dependent_i+1
        print(f"(letrec ((x{i} ")
        generate(dependent_i+1)
        print(f")) x{i}")
        print(")")


print(f"(letrec ((y  ")
generate(0)
print(")) y)")
