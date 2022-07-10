import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
 class GraphPage extends StatelessWidget {
   const GraphPage({Key? key}) : super(key: key);

   static final List<NPKanalysis> reportAnalysis = [
     NPKanalysis('N', 50 , Colors.redAccent ),
     NPKanalysis('P' , 40 , Colors.yellow.shade400),
     NPKanalysis('K' , 70 , Colors.greenAccent),
   ];

   @override
   Widget build(BuildContext context) {

     List<charts.Series<NPKanalysis, String>> series = [
       charts.Series(
           data: reportAnalysis ,
           id: 'Soil Analysis Report',
           domainFn:(NPKanalysis repo, _) => repo.component,
           measureFn: (NPKanalysis repo, _) => repo.concentration,
           colorFn: (NPKanalysis repo, _) => 
                charts.ColorUtil.fromDartColor(repo.barColor),
       ),
     ];
     return Scaffold(
       backgroundColor: Colors.grey[200],
       appBar: AppBar(
         backgroundColor: Colors.green[200],
         title: Text(
           'N-P-K Analysis',
           style: TextStyle(
             fontSize: 25,
             color: Colors.black,
           ),
         ),
         centerTitle: true,
       ),
       body: Center(
         child: Padding(
           padding: EdgeInsets.all(10),
           child: Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height / 2,
             decoration: BoxDecoration(
               color: Colors.white, borderRadius: BorderRadius.circular(10),
             ),
             child:charts.BarChart(series) ,
           ),
         ),
       ),
     );
   }
 }

class NPKanalysis{
   final String component;
   final int concentration;
   final Color barColor;

  NPKanalysis(this.component, this.concentration, this.barColor);

}