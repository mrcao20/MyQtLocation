import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12

Map {
    id: the_map
    anchors.fill: parent
    minimumZoomLevel: 3
    maximumZoomLevel: 16
    zoomLevel: 10
    center: QtPositioning.coordinate(30.67, 104.06)

    plugin: Plugin {
        name: "mymap" //"esri" "mapbox" "osm" "here"

        PluginParameter {
            name: "baseUrl"
            value: "file:///"+applicationDirPath+"/dianzi_gaode_ArcgisServerTiles/_alllayers"
        }
        PluginParameter {
            name: "format"
            value: "png"
        }
    }
}
