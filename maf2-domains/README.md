# Lattice-based Abstract Domains

This library provides abstract domains to the main analysis package `maf2-hs`.
The library is designed to be reusable and to be applied in different settings.

Currently, we support the following abstract domains:
- Constant propagation: a simple constant propagation domain that consists of three layers, a bottom layer, a middle layer representing all the constants, and a top layer representing a non-constant value. The library provides primitive operations on this domain in the form of a string, real number, natural number and boolean domain.
- Labeled product domain: this domain can be used to combine different lattices together to form a single abstract value. The elements in this domain are labeled, such that they can be used for efficient lookup and implementation of lattice operations. 

Additionally, the library provides language-specific domains that encode some of the semantics of language-specific primitives and values. For instance, Scheme has a *numerical tower* and needs automatic coercion for specific operations on numerical values.   

Currently, we provide the following language-specific domains:
- Scheme

Other domains are in development:
- Python 

## Usage

The library can be used in a standalone-fashion (i.e. without `maf2-hs`) by adding it as an `extra-deps` in your `stack.yaml` (assuming a Stack-based project) file, as follows:

```yaml
extra-deps:
    - git: https://github.com/softwarelanguageslab/maf-hs
      commit: XXX
      subdirs:
        - maf2-domains/
```

and then, add it as a dependencies to your `package.yaml`:

```yaml
dependencies:
    - maf2-domains
```
