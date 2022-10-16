add_executable(swift-client-complete swift-client-complete.swift)
add_executable(swift-client-fwd-declared swift-client-fwd-declared.swift)

add_library(foo foo.m)
add_library(foo-consumer foo-consumer.m)

target_link_libraries(foo-consumer foo)

target_link_libraries(swift-client-complete PRIVATE foo foo-consumer)
target_include_directories(swift-client-complete PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_options(swift-client-complete PRIVATE "SHELL: -target arm64-apple-macos12.6 -Xfrontend -enable-objc-interop")

target_link_libraries(swift-client-fwd-declared PRIVATE foo-consumer)
target_include_directories(swift-client-fwd-declared PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_options(swift-client-fwd-declared PRIVATE "SHELL: -target arm64-apple-macos12.6 -Xfrontend -enable-objc-interop")
