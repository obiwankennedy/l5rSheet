import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Qt.labs.qmlmodels

RowLayout {
    id: root
    required property int pointSize

    function reset() {
        attackRepeater.model = 0
        attackRepeater.model = 4
        equipmentRepeater.model = 0
        equipmentRepeater.model = 4
    }

    spacing: 20
    GridLayout {
        columns: 2
        Repeater {
            id: attackRepeater
            model: 4

            GridLayout {
                columns: 2
                TextField {
                    Layout.columnSpan: 2
                    Layout.fillWidth: true
                    font.pointSize: root.pointSize
                }
                Label {
                    text: "Attaque:"
                }
                TextField {
                    font.pointSize: root.pointSize

                }
                Label {
                    text: "Dommages:"
                }
                TextField {
                    font.pointSize: root.pointSize

                }
                Label {
                    text: "Détails:"
                    Layout.rowSpan: 2

                }
                FixedTextArea {
                    Layout.rowSpan: 2
                    Layout.fillWidth: true
                    Layout.maximumWidth: 120
                }
            }
        }

    }

    ColumnLayout {
        id: equipment
        Layout.fillWidth: true
        Label {
            text: "Equipements"
            Layout.fillWidth: true
        }
        Repeater {
            id: equipmentRepeater
            model: 10
            TextField {
                font.pointSize: root.pointSize
                Layout.fillWidth: true
            }
        }
    }

    ColumnLayout {
        GridLayout {
            id: advantage
            columns:2
            Label {
                id: advlbl
                text: "Avantages"
            }
            Label {
                id: advDesc
                text: "Description"
                //Layout.fillWidth: true
            }
            TextField {
                implicitWidth: desLbl.implicitWidth*2
                //font.pointSize: root.pointSize
            }

            FixedTextArea {
                implicitWidth: advDesc.implicitWidth*2
                implicitHeight: 60
                font.pointSize: root.pointSize*0.50
            }


            TextField {
                implicitWidth: desLbl.implicitWidth*2
                //font.pointSize: root.pointSize
            }


            FixedTextArea {
                implicitWidth: advDesc.implicitWidth*2
                implicitHeight:60
                font.pointSize: root.pointSize*0.50
            }



            TextField {
                implicitWidth: desLbl.implicitWidth*2
                //font.pointSize: root.pointSize
            }

            FixedTextArea {
                implicitWidth: advDesc.implicitWidth*2
                implicitHeight:60
                font.pointSize: root.pointSize*0.50
            }


            TextField {
                implicitWidth: desLbl.implicitWidth*2
                //font.pointSize: root.pointSize
            }


            FixedTextArea {
                implicitWidth: advDesc.implicitWidth*2
                implicitHeight:60
                font.pointSize: root.pointSize*0.50
            }
            Label {
                id: desLbl
                text: "Désavantages"
            }
            Label {
                text: "Description"
            }
            TextField {
                implicitWidth: desLbl.implicitWidth*2
               // font.pointSize: root.pointSize
            }

            FixedTextArea {
                implicitWidth: advDesc.implicitWidth*2
                implicitHeight:60
                font.pointSize: root.pointSize*0.50
            }


            TextField {
                implicitWidth: desLbl.implicitWidth*2
                //font.pointSize: root.pointSize
            }
            FixedTextArea {
                implicitWidth: advDesc.implicitWidth*2
                implicitHeight:60
                font.pointSize: root.pointSize*0.50
            }



            TextField {
                implicitWidth: desLbl.implicitWidth*2
                //font.pointSize: root.pointSize
            }

            FixedTextArea {
                implicitWidth: advDesc.implicitWidth*2
                implicitHeight:60
                font.pointSize: root.pointSize*0.50
            }


            TextField {
                implicitWidth: desLbl.implicitWidth*2
            }

            FixedTextArea {
                implicitWidth: advDesc.implicitWidth*2
                implicitHeight:60
                font.pointSize: root.pointSize*0.50
            }
        }
    }

}

