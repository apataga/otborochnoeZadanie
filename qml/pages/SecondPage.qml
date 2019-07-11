import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Pickers 1.0
import harbour.MyPdfReader.pdf 1.0

Page {
    id: pageTwo

    // The effective value will be restricted by ApplicationWindow.allowedOrientations

    //    allowedOrientations: Orientation.All

    PDFLoader {
        id: pdfLoader
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        Component.onCompleted: {
            pdfLoader.loadPDF(file.selectedFile)
            file.selectedFileCurrentPage = pdfLoader.currentPage
            pdfLoader.textureSize(600, 600)
        }
    }
}
