import QtQuick 2.4

CustomServiceForm {

    Gradient {id: weightButtonGradient; GradientStop { position: 0.0; color: "#f29084" } GradientStop { position: 1.0; color: "#f45d5d" }}
    Gradient {id: heightButtonGradient; GradientStop { position: 0.0; color: "#278bbc" } GradientStop { position: 1.0; color: "#0c6998" }}
    Gradient {id: bmiButtonGradient; GradientStop { position: 0.0; color: "#38ae32" } GradientStop { position: 1.0; color: "#237d1d" }}
    Gradient {id: tempButtonGradient; GradientStop { position: 0.0; color: "#bcc860" } GradientStop { position: 1.0; color: "#99a535" }}
    Gradient {id: pulseButtonGradient; GradientStop { position: 0.0; color: "#f6b349" } GradientStop { position: 1.0; color: "#bb8025" }}
    Gradient {id: bpButtonGradient; GradientStop { position: 0.0; color: "#ae60ec" } GradientStop { position: 1.0; color: "#854bb4" }}

    Gradient {id: buttonPressedGradient; GradientStop{position: 0.0; color: "#292929"} GradientStop {position: 1.0; color: "#292929"}}

    FontLoader {id: aleo; source: "resources/fonts/aleo-bold-webfont.ttf"}
    FontLoader {id: rob; source: "resources/fonts/Roboto-Bold.ttf"}

    customSelectText.font.family: rob.name

    weightSelectHText.font.family: rob.name
    weightSelectText.font.family: rob.name

    heightSelectHText.font.family: rob.name
    heightSelectText.font.family: rob.name

    bmiSelectHText.font.family: rob.name
    bmiSelectText.font.family: rob.name

    tempSelectHText.font.family: rob.name
    tempSelectText.font.family: rob.name

    pulseSelectHText.font.family: rob.name
    pulseSelectText.font.family: rob.name

    bpSelectHText.font.family: rob.name
    bpSelectText.font.family: rob.name

    weightSelectRect.gradient: weightSelectMouseArea.pressed ? buttonPressedGradient : weightButtonGradient
    heightSelectRect.gradient: heightSelectMouseArea.pressed ? buttonPressedGradient : heightButtonGradient
    bmiSelectRect.gradient: bmiSelectMouseArea.pressed ? buttonPressedGradient : bmiButtonGradient
    tempSelectRect.gradient: tempSelectMouseArea.pressed ? buttonPressedGradient : tempButtonGradient
    pulseSelectRect.gradient: pulseSelectMouseArea.pressed ? buttonPressedGradient : pulseButtonGradient
    bpSelectRect.gradient: bpSelectMouseArea.pressed ? buttonPressedGradient : bpButtonGradient
}
