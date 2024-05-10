import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ColumnLayout {
    id: _root
    required property int pointSize
    //width:headerLyt.implicitWidth

    function reset() {
        repeater.model=0
        repeater.model=16
    }

    RowLayout {
        id: headerLyt
        Layout.fillWidth: true
        Label {
            Layout.fillWidth: true
            text: "Compétences"
            font.pointSize: _root.pointSize
        }
        Label {
            id: rank
            text: "Rang"
            font.pointSize: _root.pointSize
        }
    }

    Repeater {
        id: repeater
        model: 16
        RowLayout {
            Layout.fillWidth: true
            TextField {
                Layout.fillWidth: true
                font.pointSize: _root.pointSize
                background: Rectangle {
                    Rectangle {
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: 2
                        color: "black"
                        opacity: 0.4
                    }
                }

            }
            TextField {
                implicitWidth: rank.implicitWidth
                font.pointSize: _root.pointSize
                validator: IntValidator {
                    bottom: 0
                    top: 10
                }
                background: Rectangle {
                    Rectangle {
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: 2
                        color: "black"
                        opacity: 0.4
                    }
                }
            }
        }

    }
}
