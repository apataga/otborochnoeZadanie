import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Pickers 1.0

Page {
    id: pageOne

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Column {
        anchors.fill: parent

        // Добавить заголовок с названием приложения
        PageHeader {
            title: qsTr("NewPdfLoader")
        }

        //Добавить объект типа Label с текстом "Last file name:"
        // Добавить объект типа Label с названием последнего файла. Использовать свойство selectedFile элемента file.
        Label {
            text: qsTr("Last file name: " + (file.selectedFileName ? file.selectedFileName : "No file name"))
        }

        // Добавить объект типа FilePickerPage для загрузки страницы выбора файлов с расширением .pdf. При выборе файла в стек страниц загружается SecondPage.qml
        FilePickerPage {
            id: filePickerPage
            nameFilters: [ '*.pdf' ]
            onSelectedContentPropertiesChanged: {
                file.selectedFile = selectedContentProperties.filePath
                file.selectedFileName = selectedContentProperties.fileName
                pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        //Добавить объект типа Button. При нажатии на кнопку в стек страниц загружается FilePickerPage
        Button {
            text: qsTr("Select pdf file...")
            onClicked: pageStack.push(filePickerPage)
        }
    }
}
