import 'package:gdcflutter/src/pages/home.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectionItemHomeWidget extends StatefulWidget {
  SelectionItemHomeWidget({Key? key, this.mapModel, this.heroTag}) : super(key: key);
  dynamic mapModel;
  String? heroTag;

  @override
  // ignore: library_private_types_in_public_api
  _SelectionItemHomeWidget createState() => _SelectionItemHomeWidget();
}

class _SelectionItemHomeWidget extends State<SelectionItemHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//          snap: true,
            floating: true,
//          pinned: true,
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            actions: <Widget>[],
            backgroundColor: Colors.transparent,
            expandedHeight: 250.0,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Hero(
                tag: widget.heroTag!,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "states-logo.jpeg",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Parroquia Macarao',
                              style: Theme.of(context).textTheme.headline2!.merge(
                                    TextStyle(
                                      fontSize: 35.0,
                                    ),
                                  ),
                            ),
                            SizedBox(height: 10.0),
                            Text("Taras asignadas a la parroquia: 120", style: Theme.of(context).textTheme.headline6),
                            SizedBox(height: 10.0),
                            Text("Actividades por Gabinete:".toUpperCase(), style: Theme.of(context).textTheme.bodyText2),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '1. Lorem ipsum ',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  "20",
                                  style: Theme.of(context).textTheme.headline2!.merge(
                                        TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '2. Lorem ipsum ',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  "15",
                                  style: Theme.of(context).textTheme.headline2!.merge(
                                        TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '3. Lorem ipsum ',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  "60",
                                  style: Theme.of(context).textTheme.headline2!.merge(
                                        TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '4. Lorem ipsum ',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  "25",
                                  style: Theme.of(context).textTheme.headline2!.merge(
                                        TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        children: [
                          Container(
                            height: 160.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: PieChart(
                                PieChartData(
                                  startDegreeOffset: 180.0,
                                  borderData: FlBorderData(show: false),
                                  sectionsSpace: 1,
                                  centerSpaceRadius: 0,
                                  sections: List.generate(
                                    3,
                                    (i) {
                                      switch (i) {
                                        case 0:
                                          return PieChartSectionData(
                                            color: Colors.teal,
                                            value: 30,
                                            title: '30%',
                                            showTitle: true,
                                            titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                                  TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                            radius: 60.0,
                                          );
                                        case 1:
                                          return PieChartSectionData(
                                            color: Colors.pink,
                                            value: 30,
                                            title: '30%',
                                            showTitle: true,
                                            titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                                  TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                            radius: 60.0,
                                          );
                                        case 2:
                                          return PieChartSectionData(
                                            color: Colors.amber,
                                            value: 40,
                                            title: '40%',
                                            showTitle: true,
                                            titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                                  TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                            radius: 60.0,
                                          );
                                      }
                                      return PieChartSectionData(
                                        color: Colors.amber,
                                        value: 40,
                                        title: '40%',
                                        showTitle: true,
                                        titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                              TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.0,
                                              ),
                                            ),
                                        radius: 60.0,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 160.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: PieChart(
                                PieChartData(
                                  startDegreeOffset: 180.0,
                                  borderData: FlBorderData(show: false),
                                  sectionsSpace: 1,
                                  centerSpaceRadius: 0,
                                  sections: List.generate(
                                    4,
                                    (i) {
                                      switch (i) {
                                        case 0:
                                          return PieChartSectionData(
                                            color: Colors.red,
                                            value: 30,
                                            title: '30%',
                                            showTitle: true,
                                            titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                                  TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                            radius: 60.0,
                                          );
                                        case 1:
                                          return PieChartSectionData(
                                            color: Colors.green,
                                            value: 30,
                                            title: '30%',
                                            showTitle: true,
                                            titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                                  TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                            radius: 60.0,
                                          );
                                        case 2:
                                          return PieChartSectionData(
                                            color: Colors.amber,
                                            value: 20,
                                            title: '20%',
                                            showTitle: true,
                                            titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                                  TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                            radius: 60.0,
                                          );
                                        case 3:
                                          return PieChartSectionData(
                                            color: Colors.brown,
                                            value: 20,
                                            title: '20%',
                                            showTitle: true,
                                            titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                                  TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                            radius: 60.0,
                                          );
                                      }
                                      return PieChartSectionData(
                                        color: Colors.teal,
                                        value: 40,
                                        title: '40%',
                                        showTitle: true,
                                        titleStyle: Theme.of(context).textTheme.headline2!.merge(
                                              TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.0,
                                              ),
                                            ),
                                        radius: 60.0,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
