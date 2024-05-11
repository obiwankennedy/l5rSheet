cmake_minimum_required(VERSION 3.21.1)

option(LINK_INSIGHT "Link Qt Insight Tracker library" ON)
option(BUILD_QDS_COMPONENTS "Build design studio components" ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR}/bin)
project(l5rSheet LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Core Gui Qml Quick)

qt_standard_project_setup()

qt_add_executable(l5rSheet src/main.cpp)

qt_add_resources(l5rSheet images
    FILES resources/logoL5R.png)

qt_add_qml_module(l5rSheet
URI Views
VERSION
1.0
QML_FILES qml/Main.qml
QML_FILES qml/GeneralInfoPanel.qml
QML_FILES qml/RingsPanel.qml
QML_FILES qml/SkillPanel.qml
QML_FILES qml/SchoolPanel.qml
QML_FILES qml/WeaponAndAdventagePanel.qml
QML_FILES qml/FixedTextArea.qml
QML_FILES qml/WoundPanel.qml
)

target_link_libraries(l5rSheet PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
)



include(GNUInstallDirs)
install(TARGETS l5rSheet
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
