import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Pane {
    id: _root
    required property int pointSize

    function reset() {
        textField.text = ""
        textField1.text = ""
        textField2.text = ""
        textField3.text = ""
        textField4.text = ""
        textField5.text = ""
        textField6.text = ""
        textField7.text = ""
        textField8.text = ""
    }

    GridLayout {
        id: grid
        anchors.fill: parent
        columns: 6
        Component.onCompleted: console.log("font size: ",label1.font.pointSize)

        Label {
            id: label1
            text: qsTr("Nom")
            font.pointSize: _root.pointSize
        }


        TextField {
            id: textField
            font.pointSize: _root.pointSize
            Layout.fillWidth: true
            horizontalAlignment: TextInput.AlignHCenter

        }

        Label {
            id: label2
            text: qsTr("Rang")
            font.pointSize: _root.pointSize

        }

        TextField {
            id: textField1
            font.pointSize: _root.pointSize
            horizontalAlignment: TextInput.AlignHCenter
            validator: IntValidator {

            }
        }
        Label {
            id: label7
            font.pointSize: _root.pointSize
            text: qsTr("Honneur")
        }

        TextField {
            id: textField6
            font.pointSize: _root.pointSize
            horizontalAlignment: TextInput.AlignHCenter
            validator: DoubleValidator {
                bottom: 0.0
                decimals: 1
                top: 10.0
            }
        }
        Label {
            id: label3
            text: qsTr("Clan")
            horizontalAlignment: TextInput.AlignHCenter
            font.pointSize: _root.pointSize
        }

        TextField {
            id: textField2
            font.pointSize: _root.pointSize
            Layout.fillWidth: true
        }

        Label {
            id: label4
            font.pointSize: _root.pointSize
            text: qsTr("Points d’expérience")
        }

        TextField {
            id: textField3
            font.pointSize: _root.pointSize
            horizontalAlignment: TextInput.AlignHCenter
            validator: IntValidator {

            }
        }
        Label {
            id: label8
            font.pointSize: _root.pointSize
            text: qsTr("Gloire")
        }

        TextField {
            id: textField7
            font.pointSize: _root.pointSize
            horizontalAlignment: TextInput.AlignHCenter
            validator: DoubleValidator {
                bottom: 0.0
                decimals: 1
                top: 10.0
            }
        }
        Label {
            id: label5
            font.pointSize: _root.pointSize
            text: qsTr("École")
        }

        TextField {
            id: textField4
            font.pointSize: _root.pointSize
            Layout.fillWidth: true
        }

        Label {
            id: label6
            font.pointSize: _root.pointSize
            text: qsTr("Réputation")

        }

        TextField {
            id: textField5
            font.pointSize: _root.pointSize
            horizontalAlignment: TextInput.AlignHCenter
            validator: IntValidator {

            }
        }





        Label {
            id: label9
            font.pointSize: _root.pointSize
            text: qsTr("Status")
        }

        TextField {
            id: textField8
            font.pointSize: _root.pointSize
            horizontalAlignment: TextInput.AlignHCenter
            validator: DoubleValidator {
                bottom: 0.0
                decimals: 1
                top: 10.0
            }

        }

    }
    background: Rectangle {
        color: "white"
        opacity: 0.4
    }
}
