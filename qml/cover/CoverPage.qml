import QtQuick 2.0
import Sailfish.Silica 1.0

Cover {
    Label {
        id: nameOfFileLabel
        anchors { verticalCenter: parent.verticalCenter; left: parent.left; right: parent.right; margins: 5 }
        text: file.selectedFileName
        font.pixelSize: Theme.fontSizeSmall
        truncationMode: TruncationMode.Fade
    }

    Label {
        id: currentPageLabel
        anchors.top: nameOfFileLabel.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Page ") + file.selectedFileCurrentPage
    }
}
