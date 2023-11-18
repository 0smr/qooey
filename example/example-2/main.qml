import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

import Qooey 1.0

ApplicationWindow {
    id: window
    width: 200
    height: 200
    visible: true

    palette {
        base: "#48abff"
        button: "#48abff"
        highlight: "#5c75f4"

        window: '#333'
        text: "#eee"
        windowText: "#eee"

        buttonText: "#fff"
        highlightedText: "#fff"
    }

    Column {
        anchors.centerIn: parent

        Button {
            width: 80
            checkable: true
            text: 'Test Button'
        }

        Button {
            width: 80
            highlighted: true
            text: 'Highlight'
        }
    }
}
