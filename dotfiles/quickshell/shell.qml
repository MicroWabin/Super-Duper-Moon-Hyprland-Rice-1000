import Quickshell.Wayland
import Quickshell
import Quickshell.Io
import QtQuick

PanelWindow {
	id: widget

	exclusionMode: ExclusionMode.Ignore
	WlrLayershell.layer: WlrLayer.Background

	color: "transparent"

	width: screen.width > screen.height ? screen.height : screen.width 		
	height: screen.width > screen.height ? screen.height * 0.75 : screen.width * 0.75

	IpcHandler {
		target: "widget"
		function active() {widget.WlrLayershell.layer = WlrLayer.Top}
		function unactive() {widget.WlrLayershell.layer = WlrLayer.Background}
		function getStatus(): bool {return widget.aboveWindows;}
	}

	Config {
        	id: config
	}

	property int orbitApps: config.orbitApps
	property real orbitAngle: 0
	property real scroll: 0

	property bool appVisibility: false

	Repeater {
		model: orbitApps

		Image {		
			id: apps

			source: config.appData[index][1]

			width: widget.width * 0.1
			height: widget.width * 0.1

			opacity: appVisibility ? 1.0 : 0.0
			visible: opacity == 0 ? false : true
			Behavior on opacity {
				NumberAnimation {duration: 1000}
			}
				
			property real individualOrbitAngle: orbitAngle + scroll + (index * (2 * Math.PI / orbitApps))

			x: (widget.width / 2) + ((widget.width / 2 - width / 2) * Math.cos(individualOrbitAngle)) - (width / 2)
			y: (widget.height / 2) + ((widget.width / 2 - height / 2) / 2 * Math.sin(individualOrbitAngle)) - (height / 2)
			z: y + height / 2 < widget.height / 2 ? -1 : 10

			MouseArea {
				anchors.fill: parent
				onPressed: {
					apps.width = widget.width * 0.1 - 5
					apps.height = widget.width * 0.1 - 5
					Quickshell.execDetached(["bash", "-c", config.appData[index][0]])
				}
				onReleased: {
					apps.width = widget.width * 0.1
					apps.height = widget.width * 0.1
				}
			}
		}
	}

	NumberAnimation {
		property: "orbitAngle"
		to: 2 * Math.PI
		duration: 60000
		running: true
		loops: Animation.Infinite
		target: widget
	}

	AnimatedImage {
		id: moon

		source: "Moon.webp"
		playing: true 
		cache: false
		anchors.centerIn: parent
		width: widget.height
		height: widget.height

		MouseArea {
			anchors.fill: parent
			onPressed: {
				moon.width = widget.height - 10
				moon.height = widget.height - 10
				appVisibility = !appVisibility 
			}
                        onReleased: {
                                moon.width = widget.height
                                moon.height = widget.height
			}
			onWheel: {
				scroll += (wheel.angleDelta.y / 1000)
				scroll += (wheel.angleDelta.x / 1000)
			}
		}
	}
}

