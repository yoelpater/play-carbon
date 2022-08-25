```
brew --version
```

```sh
# Install bazelisk using Homebrew.
$ brew install bazelisk

# Install Clang/LLVM using Homebrew.
# Many Clang/LLVM releases aren't built with options we rely on.
$ brew install llvm
$ export PATH="$(brew --prefix llvm)/bin:${PATH}"

# not really familiar with bazel
# but running bazel run //explorer should be from their root dir
$ cd external/carbon-lang/

# Build and run the explorer.
$ bazel run //explorer -- ../../hello.carbon
```
