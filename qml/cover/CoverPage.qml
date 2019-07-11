import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: nameOfFile
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        text: file.selectedFileName
        truncationMode: TruncationMode.Fade
    }

    Label {
        anchors.top: nameOfFile.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Page ") + file.selectedFileCurrentPage
    }

//    CoverActionList {
//        id: coverAction

//        CoverAction {
//            iconSource: "image://theme/icon-cover-next"
//        }

//        CoverAction {
//            iconSource: "image://theme/icon-cover-pause"
//        }
//    }
}
