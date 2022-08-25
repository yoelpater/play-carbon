```
brew --version
```

```
brew install bazelisk
```

```
brew install llvm
```

```
export PATH="$(brew --prefix llvm)/bin:${PATH}"
```

```
cd external/carbon-lang/
```

```
bazel run //explorer -- ../../primefactor.carbon
```

seems carbon doesn't have division operator yet, so for now implemented with subtraction. This causes when finding prime factor for a larger number slower.
