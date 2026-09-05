cmake_minimum_required(VERSION 3.25)

# Music Player - 0xwhoami7

project(Lyra
    VERSION 1.0.0
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_policy(
    SET QTP0001 NEW
    SET QTP0004 NEW
)

qt_add_executable(Lyra
    src/main.cpp
)

set_target_properties(Lyra PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

qt_add_qml_module(Lyra
    URI Lyra
    VERSION 1.0
    QML_FILES
        Main.qml
)

target_link_libraries(Lyra
    PRIVATE Qt6::Quick
)
