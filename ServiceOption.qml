import QtQuick 2.4

ServiceOptionForm {

    FontLoader {id: rob; source: "resources/fonts/Roboto-Bold.ttf"}

    Gradient {id: fullServiceGradient; GradientStop { position: 0.0; color: "#47c936" } GradientStop { position: 1.0; color: "#217c16" }}
    Gradient {id: fullServiceButtonPressed; GradientStop{position: 0.0; color: "#152d12"} GradientStop {position: 1.0; color: "#152d12"}}

    Gradient {id: customServiceGradient; GradientStop {position: 0.0; color: "#db9540"} GradientStop {position: 1.0; color: "#c67b1d"}}
    Gradient {id: customServiceButtonPressed; GradientStop {position: 0.0; color: "#7A5220"} GradientStop {position: 1.0; color: "#7A5220"}}

    Gradient {id: findServicesGradient; GradientStop {position: 0.0; color: "#3838ba"} GradientStop {position: 1.0; color: "#1f20ae"}}
    Gradient {id: findServicesButtonPressed; GradientStop {position: 0.0; color: "#0E0E52"} GradientStop {position: 1.0; color: "#0E0E52"}}

    Gradient {id: findDirectoryGradient; GradientStop {position: 0.0; color: "#d92626"} GradientStop {position: 1.0; color: "#a52828"}}
    Gradient {id: findDirectoryButtonPressed; GradientStop {position: 0.0; color: "#660A0A"} GradientStop {position: 1.0; color: "#660A0A"}}

    fullServiceRect.gradient: fullServiceMouseArea.pressed? fullServiceButtonPressed : fullServiceGradient
    customServiceRect.gradient: customServiceMouseArea.pressed? customServiceButtonPressed : customServiceGradient
    findHealthServicesRect.gradient: findHealthMouseArea.pressed? findServicesButtonPressed : findServicesGradient
    findHealthDirectoryRect.gradient: findDirectoryMouseArea.pressed? findDirectoryButtonPressed : findDirectoryGradient
}
