import Quickshell.Wayland
import Quickshell
import Quickshell.Io
import QtQuick

PanelWindow {
        id: easterEgg

	mask: Region {item: easterEgg}
	WlrLayershell.layer: WlrLayer.Bottom
	
        exclusionMode: ExclusionMode.Ignore

	width: screen.width > screen.height ? screen.width : screen.height
	height: screen.width > screen.height ? screen.height / 2 : screen.width / 2

	color: "transparent"

	Image {
		id: jeb

	source: "Jeb.png"
	
		width: easterEgg.height / 5 
		height: easterEgg.height / 5
		x: (jebMotion / 360) * (easterEgg.width + width) - width 
		y: (jebMotion / 360) * (easterEgg.height - width)
		z: 2
		rotation: jebMotion - 45
	}

	property real jebMotion: 0.0

	SystemClock {
		precision: SystemClock.Hours

		onHoursChanged: {
			motion.start();
		}
	}

	NumberAnimation {
		id: motion		

		from: 0
		to: 360
		property: "jebMotion"
		duration: 30000
		target: easterEgg 
	}

	IpcHandler {
		target: "motion"
		function jeb() {motion.start();}
	}
}
