import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs
import QtCore
import Views

ApplicationWindow {
    id: window
    width: 1300
    height: 1000
    visible: true

    property int counter: 0
    property bool aboutToScreenShot: false
    function takeScreenShot(fileName) {

        sheet.grabToImage(function(result){
            result.saveToFile(fileName)
            window.aboutToScreenShot=false
        })

    }

    Timer {
        id: timer
        repeat: false
        onTriggered: window.takeScreenShot()
    }


    FileDialog {
        id: selecScreenShot
        defaultSuffix: "*.png"
        fileMode: FileDialog.SaveFile
        currentFolder: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
        onAccepted: {
            window.aboutToScreenShot=true
            takeScreenShot(selectedFile);
        }
    }

    FileDialog {
        id: openImage
        defaultSuffix: "*.png"
        fileMode: FileDialog.OpenFile
        currentFolder: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
        onAccepted: {
            picture.source = selectedFile;
        }
    }


    QtObject {
        id: internal
        property int margin: 40
        property int topGlobalMargin: 200
        property int internalMargin: 20
        property int defaultPointSize: 20
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            Action {
                text: qsTr("&New")
                onTriggered: {
                    picture.source= ""
                    imgUrl.source = ""
                    infoGeneral.reset()
                    ringsPanel.reset()
                    middle.reset()
                    weapon.reset()
                    retranslate()
                }

            }
            Action {
                text: qsTr("&Save")
                onTriggered: {
                    selecScreenShot.open()
                    takeScreenShot()
                }
            }
            MenuSeparator {}
            Action {
                text: qsTr("&Quit")
                onTriggered: Qt.quit()

            }
        }
        Menu {
            title: qsTr("&Edit")
            Action {
                text: qsTr("Set Avatar")
                onTriggered: {
                    openImage.open()
                }
            }
        }
    }

    Flickable {
       id: flick
        anchors.fill: parent
        contentWidth: 2480/2
        contentHeight: 3508/2



        Rectangle {
            id: sheet
            color: "#FEFEFC"
            border.width: 1
            width: 2480/2
            height: 3508/2
            Image {
                id: background
                anchors.fill: parent
                opacity: 0.5
                //source: "../../../../documents/03_jdr/01_Scenariotheque/16_l5r/01_resources/images/secrets/-004.ppm"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: logo
                anchors.top: parent.top
                anchors.right: parent.right
                source: "qrc:/resources/logoL5R.png"
                sourceSize.width: 400
                fillMode: Image.PreserveAspectFit
            }



            Image {
                id: picture
                anchors.top: parent.top
                anchors.topMargin: 5
                anchors.left: parent.left
                anchors.leftMargin: 5
                //source: imgUrl.text
                sourceSize.width: 200
                width: 200
                height: 200
                fillMode: Image.PreserveAspectFit
            }
            /*TextField {
                id: imgUrl
                anchors.top: picture.bottom
                anchors.left: parent.left
                visible: !window.aboutToScreenShot
            }*/



            GeneralInfoPanel {
                id: infoGeneral
                pointSize: internal.defaultPointSize
                anchors.left: parent.left
                anchors.leftMargin: internal.margin
                anchors.top: parent.top
                anchors.topMargin: internal.topGlobalMargin
                anchors.right: parent.right
                anchors.rightMargin: internal.margin
            }

            RingsPanel {
                id: ringsPanel
                pointSize: internal.defaultPointSize
                anchors.top: infoGeneral.bottom
                anchors.topMargin: internal.internalMargin
                anchors.left: infoGeneral.left
                anchors.right: infoGeneral.right
            }


            RowLayout {
                id: middle
                spacing: 10
                anchors.top: ringsPanel.bottom
                anchors.topMargin: internal.internalMargin
                anchors.left: ringsPanel.left
                anchors.right: ringsPanel.right
                function reset() {
                    skills.reset()
                    school.reset()
                    wounds.reset()
                }
                SkillPanel {
                    id: skills
                    pointSize: internal.defaultPointSize-4
                    Layout.fillHeight: true

                }
                SchoolPanel {
                    id: school
                    Layout.fillHeight: true
                }
                WoundPanel {
                    id: wounds
                    Layout.fillHeight: true
                    pointSize: internal.defaultPointSize
                }
            }

            WeaponAndAdventagePanel {
                id: weapon
                pointSize: internal.defaultPointSize
                anchors.left: parent.left
                anchors.leftMargin: internal.margin
                anchors.top: middle.bottom
                anchors.topMargin: internal.internalMargin
                anchors.right: parent.right
                anchors.rightMargin: internal.margin
            }

        }
    }
}
