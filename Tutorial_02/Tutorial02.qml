import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.12

import QmlNet.Tutorials.ContactList 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 800
    height: 600
    minimumWidth: width
    minimumHeight: height
    maximumWidth: width
    maximumHeight: height

    title: "Qml.NET Tutorial 2 - C# model to QML listview"

    ColumnLayout {
        id: columnLayout1
        anchors.rightMargin: 30
        anchors.leftMargin: 30
        anchors.bottomMargin: 30
        anchors.topMargin: 30
        anchors.fill: parent

        Text {
            id: headerText
            color: "#646464"
            text: qsTr("Contacts")
            wrapMode: Text.WordWrap
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            font.pixelSize: 45
        }

        Item {
            height: 30
            Layout.fillWidth: false
        }

        ListView {
            id: contactsListView
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            boundsBehavior: Flickable.StopAtBounds
            spacing: 40
            Layout.fillWidth: true
            Layout.fillHeight: true
            orientation: ListView.Vertical
            ScrollBar.vertical: ScrollBar {}

            model: Net.toListModel(contacts.getAllContacts())            
            
            delegate: Item {
                height: contactTexts.height
                width: contactsListView.width

                RowLayout {
                    anchors.fill: parent
                    spacing: 20

                    Button {
                        width: 65
                        height: 65
                        rightPadding: 0
                        leftPadding: 0
                        Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        Layout.fillHeight: true
                        background: Rectangle {
                            width: 65
                            height: 65
                            color: "#eff8ff"
                            radius: 10
                            border.color: "#EEEEEE"
                            Image {
                                width: 40
                                height: 40
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "Images/businessman.svg"
                            }
                        }
                    }

                    ColumnLayout {
                        id: contactTexts
                        spacing: 0
                        Text {
                            text: modelData.surname + ", " + modelData.forname
                            font.pointSize: 14
                            font.bold: true
                            color: "#646464"
                        }

                        Text {
                            text: modelData.address.city                                     
                            font.pixelSize: 14
                            color: "#646464"
                        }
                    }

                    Item {
                        Layout.fillWidth: true
                    }

                    Button {
                        width: 65
                        height: 65
                        rightPadding: 0
                        leftPadding: 0
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                        Layout.fillHeight: true
                        background: Rectangle {
                            width: 65
                            height: 65
                            color: "#eff8ff"
                            radius: 10
                            border.color: "#EEEEEE"
                            Image {
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                sourceSize.height: 40
                                sourceSize.width: 40
                                fillMode: Image.PreserveAspectFit
                                source: "Images/phone.svg"
                                Layout.alignment: Qt.AlignVCenter
                            }
                        }
                    }

                    Button {         
                        visible: modelData.hasEmailAddress()       
                        width: 65
                        height: 65
                        rightPadding: 0
                        leftPadding: 0
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                        Layout.fillHeight: true
                        background: Rectangle {
                            width: 65
                            height: 65
                            color: "#eff8ff"
                            radius: 10
                            border.color: "#EEEEEE"
                            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                            Image {
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                sourceSize.height: 40
                                sourceSize.width: 40
                                fillMode: Image.PreserveAspectFit
                                source: "Images/feedback.svg"
                                Layout.alignment: Qt.AlignVCenter
                            }
                        }    
                    }
                }
            }
        }
    }
}



























































































/*##^## Designer {
    D{i:4;invisible:true}
}
 ##^##*/
