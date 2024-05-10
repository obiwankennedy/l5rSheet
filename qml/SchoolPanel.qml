import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


Item {
    id: _root
    implicitWidth:  330//Math.max(lyt.implicitWidth, stack.currentItem.implicitWidth)

    function reset() {
        field0.text="1. "
        field1.text=""
        field2.text="2. "
        field3.text=""
        field4.text="3. "
        field5.text=""
        field6.text="4. "
        field7.text=""
        field8.text="5. "
        field9.text=""
        field10.text=""
        field11.text=""
        field12.text=""
    }


    ColumnLayout {
        id: lyt
        anchors.fill: parent
        Button {
            id: schoolType
            checkable: true
            text: checked ? "École de Shugenja" : "École de Bushi"
            font.pointSize: 10
            Layout.fillWidth: true
        }

        StackLayout {
            id: stack

            Layout.fillWidth: true
            Layout.fillHeight: true

            currentIndex: schoolType.checked ? 1 : 0

            ColumnLayout{
                id: fiveRankSchool
                TextField {
                    id: field0
                    property string title: ""
                    text: "1. %1".arg(title)
                    Layout.fillWidth: true
                }
                FixedTextArea {
                    id: field1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
                TextField {
                    id: field2
                    property string title: ""
                    text: "2. %1".arg(title)
                    Layout.fillWidth: true
                }
                FixedTextArea {
                    id: field3
                   Layout.fillHeight: true
                   Layout.fillWidth: true
                }
                TextField {
                    id: field4
                    property string title: ""
                    text: "3. %1".arg(title)
                    Layout.fillWidth: true
                }
                FixedTextArea {
                    id: field5
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
                TextField {
                    id: field6
                    property string title: ""
                    text: "4. %1".arg(title)
                    Layout.fillWidth: true
                }
                FixedTextArea {
                    id: field7
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
                TextField {
                    id: field8
                    property string title: ""
                    text: "5. %1".arg(title)
                    Layout.fillWidth: true
                }
                FixedTextArea {
                    id: field9
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

            }
            ColumnLayout{
                id: shugSchool
                TextField {
                    id: field10
                    Layout.fillWidth: true

                }
                FixedTextArea {
                    id: field11
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.maximumHeight: Number.POSITIVE_INFINITY
                }
            }
        }
    }


}
