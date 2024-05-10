import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


GridLayout {
    id: _root
    required property int pointSize
    columns: 4

    function reset() {
        console.log("Todo: Reset WoundPanel")
    }
    Label {
        text:"Initiative:"
    }
    TextField {
        Layout.columnSpan: 3
        font.pointSize: _root.pointSize
        Layout.fillWidth: true
    }
    Label {
        text:"ND sans Armure:"
    }
    TextField {
        Layout.columnSpan: 3
        font.pointSize: _root.pointSize
        Layout.fillWidth: true
    }
    Label {
        text:"ND avec Armure:"
    }
    TextField {
        Layout.columnSpan: 3
        font.pointSize: _root.pointSize
        Layout.fillWidth: true
    }
    Label {
        text:"Récupération par jour:"
    }
    TextField {
        Layout.columnSpan: 3
        Layout.fillWidth: true
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {
        text:"Dommages subis:"
    }
    TextField {
        Layout.columnSpan: 3
        Layout.fillWidth: true
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {
        text:"Rang de blessure"
    }
    Label {
        text:"Malus"
    }
    Label {
        text:"Total"
    }
    Label {
        text:"Actuel"
    }
    Label {
        text:"Indemne"
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {
        text:"Égratiné (+3)"
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {
        text:"Légèrement Blessé (+5)"
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {
        text:"Blessé (+10)"
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {

        text:"Gravement Blessé (+15)"
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {
        text:"Impotent (+20)"
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50

        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {
        text:"Épuisé (+40)"
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    Label {
        text:"Hors de combat"
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }
    TextField {
        implicitWidth: 50
        font.pointSize: _root.pointSize
        validator: IntValidator {

        }
    }

}
