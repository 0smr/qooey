import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt.labs.settings 1.1

import Qooey 1.0

Page {
    id: root

    implicitWidth: 260
    implicitHeight: 455

    palette {
        base: '#333'
        window: '#333'

        text: '#abb'
        windowText: '#abb'

        button: '#23a7f2'
        highlight: '#23a7f2'

        buttonText: '#121314'
        highlightedText: '#121314'
    }

    function rcolor(color: color): color {
        return Qt.hsla(1, 0, 1 - color.hslLightness, 1);
    }

    component ColorBtn: Button {
        width: 30; height: width; text: '-'
        onClicked: {
            root.palette.base = palette.window;
            root.palette.window = palette.window;

            root.palette.text = rcolor(root.palette.base);
            root.palette.windowText = rcolor(root.palette.window);

            root.palette.button = palette.button;
            root.palette.highlight = Qt.darker(palette.button);

            root.palette.buttonText = palette.buttonText;
            root.palette.highlightedText = Qt.darker(palette.buttonText);
        }
    }

    component VGrid: Grid {
        spacing: 10
        columns: 1; rows: -1
        horizontalItemAlignment: Qt.AlignHCenter
        Item {width: parent.width; height: 1}
    }

    Settings {
        fileName: 'config.conf'
        property alias wcolor: root.palette.window
        property alias wtcolor: root.palette.windowText
        property alias bcolor: root.palette.button
        property alias hcolor: root.palette.highlight
        property alias btcolor: root.palette.buttonText
        property alias htcolor: root.palette.highlightedText

        property alias cindex: swipView.currentIndex
    }

    Control {
        x: 5; y: root.height - height - 5; z: 3
        padding: 5
        contentItem: Row {
            ColorBtn { palette{ window: '#121314'; button: '#23a7f2';buttonText: '#515253'}}
            ColorBtn { palette{ window: '#121314'; button: '#b0d0e9';buttonText: '#515253'}}
            ColorBtn { palette{ window: '#121314'; button: '#06d6a0';buttonText: '#515253'}}
            ColorBtn { palette{ window: '#121314'; button: '#d5b9ff';buttonText: '#515253'}}
            ColorBtn { palette{ window: '#f1f2f3'; button: '#515255';buttonText: '#a4a5a6'}}
            ColorBtn { palette{ window: '#121314'; button: '#edc9aa';buttonText: '#515253'}}
            ColorBtn { palette{ window: '#121314'; button: '#d1d2d3';buttonText: '#545556'}}
            ColorBtn { palette{ window: '#f1f2f3'; button: '#313233';buttonText: '#a4a5a6'}}
        }
    }

    SwipeView {
        id: swipView
        currentIndex: 0
        width: parent.width
        height: parent.height

        VGrid {
            spacing: 15

            Frame {
                Grid {
                    columns: 3
                    spacing: 10
                    Button {
                        width: 55
                        height: width
                        text: "Normal"
                    }

                    Button {
                        width: 55
                        height: width
                        text: "High\n-light"
                        highlighted: true
                    }

                    Button {
                        width: 55
                        height: width
                        text: "Check\n-able"
                        checkable: true
                    }

                    Button {
                        width: 55
                        height: width
                        text: "Flat Btn"
                        flat: true
                    }

                    Button {
                        width: 40
                        height: width
                        text: "Disabled\nBtn"
                        enabled: false
                    }

                    Button {
                        width: 40
                        height: width
                        text: "Small"
                    }
                }
            }

            Button {
                width: parent.width - 20
                height: 45
                text: "Wide Checkable Button"
                checkable: true
                font.family: 'carlito'
            }

            Row {
                CheckBox {
                    text: "Check\nbox"
                    tristate: true
                    font.family: 'carlito'
                }

                Switch {
                    text: "Switch"
                    font.family: 'carlito'
                }
            }

            Row {
                RadioButton {
                    text: "Radio 1"
                    font.family: 'carlito'
                }

                RadioButton {
                    text: "Radio 2"
                    font.family: 'carlito'
                }
            }

            Row {
                spacing: 5

                Text {
                    height: parent.height
                    text: "Busy Indicator \u2192"
                    color: root.palette.windowText
                    verticalAlignment: Text.AlignVCenter
                    font { family: 'carlito' }
                }

                Control {
                    width: 50; height: 50

                    contentItem: BusyIndicator {
                        running: false
                        TapHandler { onTapped: parent.running ^= true }
                    }

                    background: Rectangle {
                        color: 'transparent'
                        border.color: root.palette.buttonText
                        opacity: 0.5
                        radius: 5
                    }
                }
            }
        }

        VGrid {
            spacing: 5

            Label { text: "Progress Bar" }
            ProgressBar {
                width: parent.width
                value: slider1.value
            }

            Label { text: "Slider" }
            Slider {
                id: slider1
                width: parent.width
                value: 0.3
            }

            Label { text: "RangeSlider" }
            RangeSlider { width: parent.width }

            Label { text: "SpinBox" }
            SpinBox { to: 10 }

            Label { text: "TextArea" }
            TextArea {
                width: parent.width - 20
                text: 'Simple example of \nTextArea.'
            }

            Label { text: "TextField" }
            TextField {
                width: parent.width - 20
                text: 'Example text field.'
            }
        }

        VGrid {
            Label { text: "Dial" }

            Dial {
                width: 100
                height: 100
            }

            Label { text: "Tumbler" }

            Tumbler {
                model: 40
                height: 75
                visibleItemCount: 3
            }

            Label { text: "ComboBox" }

            ComboBox {
                id: comboBox
                model: 40
                editable: true
            }
        }
    }
}
