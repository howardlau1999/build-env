load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

###########################################
# Rules
###########################################

#########
# C/C++
#########

http_archive(
    name = "rules_cc",
    urls = ["https://github.com/bazelbuild/rules_cc/archive/262ebec3c2296296526740db4aefce68c80de7fa.zip"],
    strip_prefix = "rules_cc-262ebec3c2296296526740db4aefce68c80de7fa",
    sha256 = "9a446e9dd9c1bb180c86977a8dc1e9e659550ae732ae58bd2e8fd51e15b2c91d",
)

http_archive(
    name = "rules_foreign_cc",
    sha256 = "e14a159c452a68a97a7c59fa458033cc91edb8224516295b047a95555140af5f",
    strip_prefix = "rules_foreign_cc-0.4.0",
    url = "https://github.com/bazelbuild/rules_foreign_cc/archive/0.4.0.tar.gz",
)

load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

# This sets up some common toolchains for building targets. For more details, please see
# https://bazelbuild.github.io/rules_foreign_cc/0.4.0/flatten.html#rules_foreign_cc_dependencies
rules_foreign_cc_dependencies()

git_repository(
    name = "com_github_nelhage_rules_boost",
    commit = "a7851e47957fac82c05b20ffd5b4fad592797ce6",
    remote = "https://github.com/nelhage/rules_boost",
    shallow_since = "1591047380 -0700",
)

load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")
boost_deps()

#########
# Golang
#########

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "8e968b5fcea1d2d64071872b12737bbb5514524ee5f0a4f54f5920266c261acb",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.28.0/rules_go-v0.28.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.28.0/rules_go-v0.28.0.zip",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "62ca106be173579c0a167deb23358fdfe71ffa1e4cfdddf5582af26520f1c66f",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.23.0/bazel-gazelle-v0.23.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.23.0/bazel-gazelle-v0.23.0.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.16.5")

gazelle_dependencies()

########
# Rust
########

http_archive(
    name = "rules_rust",
    sha256 = "224ebaf1156b6f2d3680e5b8c25191e71483214957dfecd25d0f29b2f283283b",
    strip_prefix = "rules_rust-a814d859845c420fd105c629134c4a4cb47ba3f8",
    urls = [
        # `main` branch as of 2021-06-15
        "https://github.com/bazelbuild/rules_rust/archive/a814d859845c420fd105c629134c4a4cb47ba3f8.tar.gz",
    ],
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories()

##########
# Nodejs
##########

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "0fa2d443571c9e02fcb7363a74ae591bdcce2dd76af8677a95965edf329d778a",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/3.6.0/rules_nodejs-3.6.0.tar.gz"],
)

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")
node_repositories()

#########
# Docker
#########

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "59d5b42ac315e7eadffa944e86e90c2990110a1c8075f1cd145f487e999d22b3",
    strip_prefix = "rules_docker-0.17.0",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.17.0/rules_docker-v0.17.0.tar.gz"],
)

###########################################
# Libraries
###########################################

http_archive(
    name = "com_google_absl",
    urls = ["https://github.com/abseil/abseil-cpp/archive/98eb410c93ad059f9bba1bf43f5bb916fc92a5ea.zip"],
    strip_prefix = "abseil-cpp-98eb410c93ad059f9bba1bf43f5bb916fc92a5ea",
    sha256 = "aabf6c57e3834f8dc3873a927f37eaf69975d4b28117fc7427dfb1c661542a87",
)

http_archive(
    name = "com_google_googletest",
    urls = ["https://github.com/google/googletest/archive/011959aafddcd30611003de96cfd8d7a7685c700.zip"],
    strip_prefix = "googletest-011959aafddcd30611003de96cfd8d7a7685c700",
    sha256 = "6a5d7d63cd6e0ad2a7130471105a3b83799a7a2b14ef7ec8d742b54f01a4833c",
)

http_archive(
    name = "com_github_google_benchmark",
    urls = ["https://github.com/google/benchmark/archive/dc1a97174d5b84b1ce6720f1c98f85e6031b4723.zip"],
    strip_prefix = "benchmark-dc1a97174d5b84b1ce6720f1c98f85e6031b4723",
    sha256 = "16b0919e68a53d9e3c0c32295afdbeb2ef36cf7291c43bda5035573754bcb292",
)

http_archive(
    name = "com_github_jupp0r_prometheus_cpp",
    strip_prefix = "prometheus-cpp-952c6bcdfec081f3259ebbaba8a03459ff57e1ba",
    urls = ["https://github.com/jupp0r/prometheus-cpp/archive/952c6bcdfec081f3259ebbaba8a03459ff57e1ba.zip"],
    sha256 = "8a01268ac48b346c043d53df50808ae7485c7d384662aec170b863d8218c7934",
)

load("@com_github_jupp0r_prometheus_cpp//bazel:repositories.bzl", "prometheus_cpp_repositories")

prometheus_cpp_repositories()

http_archive(
    name = "com_github_grpc_grpc",
    urls = [
        "https://github.com/grpc/grpc/archive/58602e20a3f3e48f24a4114c757099b25b947f7b.tar.gz",
    ],
    strip_prefix = "grpc-58602e20a3f3e48f24a4114c757099b25b947f7b",
    sha256 = "1b9b77f894d4d2cca73f534f4bee574588e5ed7f31794715073e4957fb790cee",
)

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")
grpc_deps()

load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")
grpc_extra_deps()

http_archive(
    name = "rules_proto_grpc",
    sha256 = "7954abbb6898830cd10ac9714fbcacf092299fda00ed2baf781172f545120419",
    strip_prefix = "rules_proto_grpc-3.1.1",
    urls = ["https://github.com/rules-proto-grpc/rules_proto_grpc/archive/3.1.1.tar.gz"],
)

load("@rules_proto_grpc//:repositories.bzl", "rules_proto_grpc_toolchains", "rules_proto_grpc_repos")
rules_proto_grpc_toolchains()
rules_proto_grpc_repos()

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
rules_proto_dependencies()
rules_proto_toolchains()

git_repository(
    name = "com_github_gflags_gflags",
    remote = "https://github.com/gflags/gflags.git",
    tag = "v2.2.2",
)

http_archive(
    name = "com_github_google_glog",
    sha256 = "21bc744fb7f2fa701ee8db339ded7dce4f975d0d55837a97be7d46e8382dea5a",
    strip_prefix = "glog-0.5.0",
    urls = ["https://github.com/google/glog/archive/v0.5.0.zip"],
)

http_archive(
    name = "com_github_google_leveldb",
    build_file = "//:leveldb.BUILD",
    strip_prefix = "leveldb-a53934a3ae1244679f812d998a4f16f2c7f309a6",
    url = "https://github.com/google/leveldb/archive/a53934a3ae1244679f812d998a4f16f2c7f309a6.tar.gz"
)

http_archive(
   name = "com_github_google_flatbuffers",
   strip_prefix = "flatbuffers-63d51afd1196336a7d1f56a988091ef05deb1c62",
   urls = ["https://github.com/google/flatbuffers/archive/63d51afd1196336a7d1f56a988091ef05deb1c62.tar.gz"],
   sha256 = "3f469032571d324eabea88d7014c05fec8565a5877dbe49b2a52d8d1a0f18e63",
)

git_repository(
    name = "com_github_sogou_workflow",
    remote = "https://github.com/sogou/workflow",
    commit = "93319624aa08f83a10f3eb791827156b13e70a4f",
    shallow_since = "1629456047 +0800",
)

http_archive(
    name = "com_github_baidu_braft",
    strip_prefix = "braft-1.1.2",
    urls = ["https://github.com/baidu/braft/archive/refs/tags/v1.1.2.tar.gz"],
)

http_archive(
    name = "com_github_fmtlib_fmt",
    urls = ["https://github.com/fmtlib/fmt/archive/refs/tags/8.0.1.tar.gz"],
    strip_prefix = "fmt-8.0.1",
    build_file_content = 
"""
cc_library(
    name = 'fmt',
    hdrs = glob(['include/**']),
    srcs = [
        'src/format.cc',
    ],
    includes = ['include'],
    visibility = ['//visibility:public'],
)
"""
)

http_archive(
    name = "com_github_facebook_folly",
    urls = ["https://github.com/facebook/folly/releases/download/v2021.09.20.00/folly-v2021.09.20.00.tar.gz"],
    strip_prefix = "folly-v2021.09.20.00",
    build_file_content = 
"""

"""
)

http_archive(
    name = "com_gitlab_libeigen_eigen",
    sha256 = "0215c6593c4ee9f1f7f28238c4e8995584ebf3b556e9dbf933d84feb98d5b9ef",
    strip_prefix = "eigen-3.3.8",
    urls = [
        "https://gitlab.com/libeigen/eigen/-/archive/3.3.8/eigen-3.3.8.tar.bz2",
    ],
    build_file_content =
"""
cc_library(
    name = 'eigen',
    srcs = glob(['Eigen/**/src/**/*.h', 'unsupported/Eigen/**/src/**/*.h']),
    includes = ['.', 'unsupported'],
    hdrs = glob([
        'Eigen/*',
        'unsupported/Eigen/*',
        'unsupported/Eigen/CXX11/*',
    ]),
    visibility = ['//visibility:public'],
)
"""
)

http_archive(
  name = "pybind11_bazel",
  strip_prefix = "pybind11_bazel-992381ced716ae12122360b0fbadbc3dda436dbf",
  urls = ["https://github.com/pybind/pybind11_bazel/archive/992381ced716ae12122360b0fbadbc3dda436dbf.zip"],
)
# We still require the pybind library.
http_archive(
  name = "pybind11",
  build_file = "@pybind11_bazel//:pybind11.BUILD",
  strip_prefix = "pybind11-2.7.1",
  urls = ["https://github.com/pybind/pybind11/archive/v2.7.1.tar.gz"],
)
load("@pybind11_bazel//:python_configure.bzl", "python_configure")
python_configure(name = "local_config_python")

# git_repository(
#     name = "boringssl",
#     commit = "fc44652a42b396e1645d5e72aba053349992136a",
#     remote = "https://github.com/google/boringssl",
# )

# Group the sources of the library so that rules in rules_foreign_cc have access to it
# all_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])"""

# http_archive(
#     name = "openssl",
#     build_file_content = all_content,
#     strip_prefix = "openssl-1.1.1l",
#     urls = ["https://www.openssl.org/source/openssl-1.1.1l.tar.gz"],
# )