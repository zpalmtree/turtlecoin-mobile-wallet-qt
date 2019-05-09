import QtQuick 2.12
import QtQuick.Controls 2.5
import io.qt.examples.backend 1.0

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    BackEnd {
        id: backend
    }

    Text {
        text: 'Your address:'
        color: 'white'
        anchors.bottom: address.top
        anchors.horizontalCenter: address.horizontalCenter
        anchors.bottomMargin: 5
    }

    Text {
        id: address
        text: backend.userName
        anchors.centerIn: parent
        color: 'white'
        padding: 20
        wrapMode: Text.Wrap
        width: parent.width
    }
}
