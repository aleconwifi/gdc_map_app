import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


late MapShapeSource _mapSource;
late List <MapModel> _mapData;

  @override
void initState() {
  _mapData = _getMapData();
  _mapSource = MapShapeSource.asset(
    'assets/shape_ale.json',
    shapeDataField: 'PARROQUIA',
    dataCount: _mapData.length,
    primaryValueMapper: (int index) => _mapData[index].state,
    dataLabelMapper: (int index) => _mapData[index].state,
    shapeColorValueMapper: (int index) => _mapData[index].color,
  );

  super.initState();
}

  @override
  void dispose() {
    _mapData.clear();
    _mapData.clear();
    super.dispose();
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: EdgeInsets.fromLTRB(10, 50, 10, 0),  

       child:   
        SfMaps(
      layers: [
        MapShapeLayer(
          source: _mapSource,
          showDataLabels: true,
        shapeTooltipBuilder: (BuildContext context, int index){
          return Padding(padding: EdgeInsets.all(7),
          child: Text(_mapData[index].state,
          style: TextStyle(color: Colors.white)),
          
          );
        },
        tooltipSettings: MapTooltipSettings(color: Colors.red),
        ),
      ],
    ) ,
    
    ),
  );
}

  static List<MapModel> _getMapData(){
    return <MapModel>[
      MapModel('Sucre', 'PAS', Colors.green),
      MapModel('La Pastora', 'PAS', Colors.green),
      MapModel('Altagracia', 'ALT', Colors.green),
      MapModel('San Bernardino', 'SAN', Colors.green),



    ];
  }
}

class MapModel {
  MapModel(this.state, this.stateCode, this.color);
  String state;
  String stateCode;
  Color color;

}