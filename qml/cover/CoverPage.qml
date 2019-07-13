import QtQuick 2.0
import Sailfish.Silica 1.0

Cover {
    Label {
        text: qsTr("NewPdfLoader")
        font.pixelSize: Theme.fontSizeLarge
        anchors { verticalCenter: parent.verticalCenter; top: parent.top; topMargin: 10 }
    }

    Label {
        id: fileNameLabel
        anchors { verticalCenter: parent.verticalCenter; left: parent.left; right: parent.right; margins: 5 }
        text: file.selectedFileName
        font.pixelSize: Theme.fontSizeSmall
        truncationMode: TruncationMode.Fade
    }

    Label {
        id: currentPageLabel
        anchors.top: fileNameLabel.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: file.selectedFileCurrentPage
    }
}
