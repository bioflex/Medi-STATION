import QtQuick 2.4
import QtPositioning 5.9
import QtLocation 5.9
import QtQuick.Controls 2.2

NearByScreenForm {


        Plugin
        {
            id: mapPlugin
            name: "osm" // "mapboxgl", "esri", ...
            // specify plugin parameters if necessary
            // PluginParameter {
            //     name:
            //     value:
            // }

        }

        PositionSource
        {
            id: positionSource
            updateInterval: 1000
            active: true
        }

        Map
        {
            id: mapId
            anchors.fill: parent
            plugin: mapPlugin
            center: QtPositioning.coordinate(6.68517, -1.57602) // Tech Hospital
            minimumZoomLevel: 17
            maximumZoomLevel: 17
            zoomLevel: 17
            copyrightsVisible: false
            //gesture.enabled:  false
            gesture.acceptedGestures: MapGestureArea.PanGesture

            MapCircle
            {
                center
                {
                    latitude: 6.68517
                    longitude: -1.57602
                }
                radius: 20.0
                color: 'green'
                border.width: 3
            }
        }

    }
