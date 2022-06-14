import 'package:gdcflutter/src/pages/selection_item_home.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MapShapeSource _mapSource;
  late List<MapModel> apData = [
    MapModel('Sucre', 'PAS', Colors.red.withOpacity(0.5)),
    MapModel('La Pastora', 'PAS', Colors.red.withOpacity(0.5)),
    MapModel('Altagracia', 'ALT', Colors.red.withOpacity(0.5)),
    MapModel('San Bernardino', 'SAN', Colors.red.withOpacity(0.5)),
  ];
 
  @override
  void initState() {
    _mapSource = MapShapeSource.asset(
      'assets/shape_ale.json',
      shapeDataField: 'PARROQUIA',
      dataCount: apData.length,
      primaryValueMapper: (int index) => apData[index].state,
      //dataLabelMapper: (int index) => apData[index].state,
      shapeColorValueMapper: (int index) => apData[index].color,
    );

    super.initState();
  }

  @override
  void dispose() {
    apData.clear();
    apData.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SfMaps(

          layers: [
            MapShapeLayer(
              source: _mapSource,
             // showDataLabels: true,
              
              tooltipSettings: const MapTooltipSettings(color: Colors.white),
              color: Colors.red.withOpacity(0.5),
              shapeTooltipBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(7),
                  child: Text(
                    apData[index].state,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                );
              },
              onSelectionChanged: (int i) {
                 apData.map((e) => e.color = Colors.red.withOpacity(0.5)).toList();
                apData.elementAt(i).color = Colors.red;
                 setState(() {});
                Navigator.push(context, MaterialPageRoute(builder: (context) => SelectionItemHomeWidget(mapModel: apData.elementAt(i), heroTag: UniqueKey().toString())));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MapModel {
  MapModel(this.state, this.stateCode, this.color);
  String state;
  String stateCode;
  Color color;
}
