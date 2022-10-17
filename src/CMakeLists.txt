add_executable(swift-client-complete swift-client-complete.swift)
add_executable(swift-client-fwd-declared swift-client-fwd-declared.swift)

add_library(foo-bar foo-bar.m)
add_library(foo-bar-consumer foo-bar-consumer.m)

target_link_libraries(foo-bar-consumer foo-bar)

target_link_libraries(swift-client-complete PRIVATE foo-bar foo-bar-consumer)
target_include_directories(swift-client-complete PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_options(swift-client-complete PRIVATE "SHELL: -target arm64-apple-macos12.6 -Xfrontend -enable-objc-interop")

target_link_libraries(swift-client-fwd-declared PRIVATE foo-bar-consumer)
target_include_directories(swift-client-fwd-declared PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_options(swift-client-fwd-declared PRIVATE "SHELL: -target arm64-apple-macos12.6 -Xfrontend -enable-objc-interop")
