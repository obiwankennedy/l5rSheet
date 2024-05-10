import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

GridLayout {
    id: grid1
    required property int pointSize
    columns: 5
    rowSpacing: 0

    function reset() {
        repeater.model = 0
        repeater.model = attributs
    }

    ListModel {
        id: attributs
        ListElement {
            name:"Terre"
            color1: "#582900"
            color2: "#764929"
            element: true
        }
        ListElement {
            name:"Air"
            color1: "#79f8f8"
            color2: "#96faf9"
            element: true
        }
        ListElement {
            name:"Feu"
            color1: "#850606"
            color2: "#9f3c2c"
            element: true
        }
        ListElement {
            name:"Eau"
            color1: "#357ab7"
            color2: "#608fc3"
            element: true
        }
        ListElement {
            name:"Vide"
            color1: "#464646"
            color2: "#626262"
            element: true
        }
        ListElement {
            name:"Constitution"
            color1: "#764929"
            color2: "#936a4f"
            element: false
        }
        ListElement {
            name:"Reflexe"
            color1:"#96faf9"
            color2: "#aefbfa"
            element: false
        }
        ListElement {
            name:"Agilité"
            color1:"#9f3c2c"
            color2:"#b76352"
            element: false
        }
        ListElement {
            name:"Force"
            color1:"#608fc3"
            color2:"#83a4cf"
            element: false
        }

        ListElement {
            name:"Point de vide"
            color1:"#626262"
            color2:"#7f7f7f"
            element: false
        }
        ListElement {
            name:"Volonté"
            color1: "#936a4f"
            color2: "#af8d78"
            element: false
        }
        ListElement {
            name:"Intuition"
            color1:"#aefbfa"
            color2:"#c4fcfb"
            element: false
        }
        ListElement {
            name:"Intelligence"
            color1:"#b76352"
            color2:"#cd897a"
            element: false
        }
        ListElement {
            name:"Perception"
            color1:"#83a4cf"
            color2:"#a3badb"
            element: false
        }

        ListElement {
            name:"restant"
            color1:"#7f7f7f"
            color2:"#9d9d9d"
            element: false
        }
    }

    Repeater {
        id: repeater
        model: attributs
        Pane {
            Layout.fillWidth: true
            //contentWidth: 150
            RowLayout {
                    anchors.fill: parent
                Label{
                    text: name
                    Layout.fillWidth: true
                    font.bold: element
                    font.pointSize: grid1.pointSize
                }
                TextField {
                    implicitWidth: 50
                    font.bold: true
                    font.pointSize: grid1.pointSize
                    horizontalAlignment: TextInput.AlignHCenter
                    validator: IntValidator {
                        bottom: 0
                        top: 10
                    }
                    opacity: 0.8
                }
            }
            background: Rectangle {
                //radius: 10
                gradient: Gradient {
                    GradientStop { position: 0.0; color: color1 }
                    GradientStop { position: 1.0; color: color2 }
                }
            }
        }
    }

}
