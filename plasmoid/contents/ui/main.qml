import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.1
Item{
	id:root

	width: 240
	height: 240

	Rectangle{
		color: "#2ea3da"
		width: root.width
		height: root.height

		Column{
			TextEdit {
				id: edit
				width: root.width
				height: root.height-40
				padding: 10
				text: "<b>Hello</b> <i>World!</i>"
				font.family: "Helvetica"
				font.pointSize: 10
				color: "black"
				focus: true
				wrapMode: TextEdit.Wrap
				selectByMouse: true
			}
			ToolBar {
				width: root.width
				RowLayout {
					anchors.fill: parent
					ToolButton {
						text: qsTr("‹")
						onClicked: stack.pop()
					}
					Label {
						text: "Title"
						elide: Label.ElideRight
						horizontalAlignment: Qt.AlignHCenter
						verticalAlignment: Qt.AlignVCenter
						Layout.fillWidth: true
					}
					ToolButton {
						text: qsTr("⋮")
						onClicked: menu.open()
					}
				}
			}

			StackView {
				id: stack
				anchors.fill: parent
			}
		}
	}
}
