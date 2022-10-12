cmake_minimum_required(VERSION 3.20)
project(swift-objc-interop LANGUAGES Swift OBJC)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_Swift_COMPILER $ENV{SWIFT_PATH}/swiftc)
add_subdirectory(src)

