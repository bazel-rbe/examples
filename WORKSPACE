workspace(name = "examples")

http_archive(
    name = "bazel_toolchains",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/archive/b49ba3689f46ac50e9277dafd8ff32b26951f82e.tar.gz",
        "https://bazel-mirror.storage.googleapis.com/github.com/bazelbuild/bazel-toolchains/archive/b49ba3689f46ac50e9277dafd8ff32b26951f82e.tar.gz",
    ],
    strip_prefix = "bazel-toolchains-b49ba3689f46ac50e9277dafd8ff32b26951f82e",
    sha256 = "1266f1e27b4363c83222f1a776397c7a069fbfd6aacc9559afa61cdd73e1b429",
)

# The archive containing the git_repository rule needed to get the ASCIT
# extensions.
http_archive(
    name = "io_bazel",
    sha256 = "aa840321d056abd3c6be10c4a1e98a64f9f73fff9aa89c468dae8c003974a078",
    urls = [
        "https://github.com/bazelbuild/bazel/releases/download/0.8.0/bazel-0.8.0-dist.zip",
	"https://releases.bazel.build/0.8.0/release/bazel-0.8.0-dist.zip",
    ],
)

# Load Git repository rules.
load("@io_bazel//tools/build_defs/repo:git.bzl", "git_repository")

# The external ascit repository containing the Bazel extensions.
git_repository(
    name = "ascit",
    commit = "c59c51eb0c0ea69271c54d436df32b05902022b7",
    remote = "https://github.com/google/rbe-integration-test.git",
)
