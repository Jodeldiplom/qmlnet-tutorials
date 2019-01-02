import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: window
    visible: true
    width: 800
    height: 600
    minimumWidth: width
    minimumHeight: height
    maximumWidth: width
    maximumHeight: height

    title: "Qml.NET Tutorial 1 - Welcome to Qml.NET"

    ColumnLayout {
        anchors.verticalCenterOffset: 0
        anchors.topMargin: 30
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.rightMargin: 30
        anchors.leftMargin: 30

        RowLayout {
            Image {
                id: qmlnetLogo
                Layout.minimumWidth: 128
                Layout.preferredWidth: 128
                sourceSize.height: 0
                sourceSize.width: 0
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                fillMode: Image.PreserveAspectFit
                source: "images/QMLNET_Logo.png"
            }

            ColumnLayout {
                id: welcomeMessage
                visible: true
                Component.onCompleted: visible = false

                Text {
                    text: qsTr("Welcome to Qml.NET")
                    fontSizeMode: Text.HorizontalFit
                    horizontalAlignment: Text.AlignLeft
                    leftPadding: 70
                    wrapMode: Text.NoWrap
                    Layout.fillWidth: true
                    font.pixelSize: 45
                }

                Text {
                    text: qsTr("Cross-platform UIs with C#. Made easy.")
                    fontSizeMode: Text.HorizontalFit
                    font.weight: Font.Light
                    horizontalAlignment: Text.AlignLeft
                    leftPadding: 70
                    wrapMode: Text.NoWrap
                    Layout.fillWidth: true
                    font.pixelSize: 29
                }
            }
        }

        Button {
            text: "Click me"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter            
            onClicked: {
                welcomeMessage.visible = !welcomeMessage.visible
            }
        }
    }
}
