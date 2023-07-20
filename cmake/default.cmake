set(spdlog_DIR ${OCP_ROOT}/external/spdlog/${spdlog_VERSION}/install/default/lib/cmake/spdlog)
message(STATUS "spdlog_DIR: ${spdlog_DIR}")
find_package(spdlog REQUIRED)
set(spdlog_target spdlog::spdlog)