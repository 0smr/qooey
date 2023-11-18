import QtQuick 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    id: window

    width: 240
    height: 455
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

    contentData: MainPage {
        width: window.width
        height: window.height
    }
}
