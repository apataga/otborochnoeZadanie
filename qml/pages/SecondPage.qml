﻿import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Pickers 1.0
import harbour.MyPdfReader.pdf 1.0

Page {
    id: pageTwo

    // The effective value will be restricted by ApplicationWindow.allowedOrientations

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill:parent

        PDFLoader {
            id: pdfLoader
            anchors.fill: parent
            onCurrentPageChanged: file.selectedFileCurrentPage = qsTr("Page ") + pdfLoader.currentPage

            onSendErrorTextToQml: {
                console.log(errorMessage)
            }
        }

        VerticalScrollDecorator {}

        Row {
            spacing:Theme.paddingLarge
            anchors { horizontalCenter: parent.Center; bottom: parent.bottom }

            //добавить элемент Button с названием "Previous" для переключения на предыдущую старницу документа

            Button {
                text: qsTr("Previous")
                onClicked: {
                    pdfLoader.drawPreviousPage()
                }
            }

            //добавить элемент Label для отображения текущей страницы документа

            Label {
                text: pdfLoader.currentPage
            }

            // добавить элемент Button с названием "Next" для переключения на следующую страницу документа

            Button {
                text: qsTr("Next")
                onClicked: {
                    pdfLoader.drawNextPage()
                }
            }
        }

        //    Загрузка документа с помощью класса PDFLoader

        Component.onCompleted: {
            pdfLoader.loadPDF(file.selectedFile)
        }
    }
}

