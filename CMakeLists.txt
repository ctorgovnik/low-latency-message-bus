cmake_minimum_required(VERSION 3.0.0)
project(messagebus VERSION 0.1.0 LANGUAGES C CXX)


# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(CTest)
enable_testing()

# add_executable(messagebus src/main.cpp)



# fetch content depency for external libraries
include(FetchContent)

# Fetch nlohmann_json
FetchContent_Declare(json URL https://github.com/nlohmann/json/releases/download/v3.11.3/json.tar.xz)
FetchContent_MakeAvailable(json)

# Fetch Google Test
FetchContent_Declare(
    googletest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG release-1.11.0
)

FetchContent_MakeAvailable(googletest)

# define executable for main project
add_executable(messagebus src/json_serializer.cpp src/main.cpp)

target_link_libraries(messagebus PRIVATE nlohmann_json::nlohmann_json)


# Define executable for tests
add_executable(tests
    tests/json_serializer_tests.cpp
)

# Link Google Test and nlohmann_json to the test executable
target_link_libraries(tests PRIVATE gtest gtest_main nlohmann_json::nlohmann_json)

add_executable(brokertest tests/broker_tests.cpp src/broker.cpp)

target_link_libraries(brokertest PRIVATE gtest gtest_main)


# Enable testing
include(GoogleTest)
gtest_discover_tests(tests)



set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)