import Quickshell
import QtQuick
import QtMultimedia
import Quickshell.Wayland

PanelWindow {

        anchors { top: true; bottom: true; left: true; right: true }
        exclusionMode: ExclusionMode.Ignore
        WlrLayershell.layer: WlrLayer.Background
	color: "transparent"

// IF IMAGE VISIBLE TRUE THEN VIDOUT VISIBLE FALSE	
        Rectangle {
            anchors.fill: parent
            color: "transparent"

	    Image {
		id: backgroundImage
                anchors.fill: parent
		source: "file:///home/dq/Pictures/"
		visible: false
	    }

            MediaPlayer {
                 source: "file:///home/dq/"
                 videoOutput: video
                 loops: MediaPlayer.Infinite
                 Component.onCompleted: play()
             }
             VideoOutput {
		id: video
		visible: false
                 anchors.fill: parent
                 fillMode: VideoOutput.PreserveAspectCrop
            }
        }
    }	
