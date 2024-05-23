# Main executable
add_executable(${PROJECT_NAME} ./main.cpp)
target_link_libraries(${PROJECT_NAME} spdlog::spdlog)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
