workspace(name = "examples")

http_archive(
    name = "bazel_toolchains",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/acffd62731b1545c32e1c34e72fd526598ab9a66.tar.gz",
	"https://github.com/bazelbuild/bazel-toolchains/archive/acffd62731b1545c32e1c34e72fd526598ab9a66.tar.gz",
    ],
    strip_prefix = "bazel-toolchains-acffd62731b1545c32e1c34e72fd526598ab9a66",
    sha256 = "f820436a685db00945df1282df7688187b48aeed91c17686023712afcf453996",
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
    commit = "78a6194c7dda200b9522cf07707e3bc695804d1e",
    remote = "https://github.com/google/rbe-integration-test.git",
)
