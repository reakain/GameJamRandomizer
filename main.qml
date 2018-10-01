import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 640
    height: 480
    color: "#121212"
    title: qsTr("Randomizer")

    Rectangle {
        id: btnRandomizer
        x: 149
        width: 357
        height: 43
        color: "#4b4b4b"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 0

        Text {
            id: textRandomize
            x: 171
            y: 0
            color: "#ebebeb"
            text: qsTr("Gimme Some Words!")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            fontSizeMode: Text.HorizontalFit
            font.bold: true
            styleColor: "#4b4b4b"
            font.pixelSize: 25
        }
    }

    Connections {
        target: btnRandomizer
        onClicked: print("clicked")
    }

    Rectangle {
        id: btnListEdit
        x: 141
        y: 0
        width: 357
        height: 43
        color: "#4b4b4b"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: textListEdit
            x: 171
            y: 0
            color: "#ebebeb"
            text: qsTr("Edit Word List")
            styleColor: "#4b4b4b"
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.pixelSize: 25
            anchors.horizontalCenter: parent.horizontalCenter
            fontSizeMode: Text.HorizontalFit
        }
    }

    Connections {
        target: btnListEdit
        onClicked: print("clicked")
    }

    Rectangle {
        id: boxWords
        y: 140
        height: 162
        color: "#121212"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.verticalCenter: parent.verticalCenter

        Text {
            id: textWord1
            x: 254
            width: 306
            height: 81
            color: "#f6f6f6"
            text: qsTr("Word 1")
            anchors.horizontalCenterOffset: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            font.bold: true
            fontSizeMode: Text.Fit
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            lineHeight: 1
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 50
        }

        Text {
            id: textWord2
            x: 254
            y: 119
            width: 306
            height: 81
            color: "#f6f6f6"
            text: qsTr("Word 2")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenterOffset: 0
            lineHeight: 1
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.pixelSize: 50
            anchors.horizontalCenter: parent.horizontalCenter
            fontSizeMode: Text.Fit
        }
    }
}
