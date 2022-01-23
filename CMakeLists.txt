cmake_minimum_required(VERSION 3.21)
project(multithreading_reddit_not_working)

set(CMAKE_CXX_STANDARD 23)

# https://stackoverflow.com/questions/5395309/how-do-i-force-cmake-to-include-pthread-option-during-compilation
set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
set(THREADS_PREFER_PTHREAD_FLAG TRUE)
find_package(Threads REQUIRED)

add_executable(multithreading_reddit_not_working main.cpp)
target_link_libraries(multithreading_reddit_not_working PRIVATE Threads::Threads)

add_executable(multithreading_reddit_not_working_modernized modernized-main.cpp)
target_link_libraries(multithreading_reddit_not_working_modernized PRIVATE Threads::Threads)
