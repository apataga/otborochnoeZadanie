import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        anchors { verticalCenter: parent.verticalCenter; top: parent.top; topMargin: 10 }
        text: qsTr("NewPdfLoader")
        font.pixelSize: Theme.fontSizeLarge
    }

    Label {
        id: fileNameLabel
        anchors { verticalCenter: parent.verticalCenter; left: parent.left; right: parent.right; margins: 5 }
        text: file.selectedFileName
        font.pixelSize: Theme.fontSizeSmall
        truncationMode: TruncationMode.Fade
    }

    Label {
        anchors { top: fileNameLabel.bottom; horizontalCenter: parent.horizontalCenter }
        text: file.selectedFileCurrentPage
    }
}
