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
bazel run //explorer -- ../../hello.carbon
```
