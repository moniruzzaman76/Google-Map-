import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late final GoogleMapController googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Google Map"),
      ),
      body:  GoogleMap(
           initialCameraPosition: const CameraPosition(
             zoom: 15,
              bearing: 30,
              tilt: 10 ,
               target: LatLng(24.932284306033576, 89.93583614795767),
          ),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled : true,
        zoomGesturesEnabled : true,
        trafficEnabled: false,
        onMapCreated: (GoogleMapController controller){
            googleMapController = controller;
        },
        onTap: (LatLng? latLng){
           print(latLng.toString());
        },
        mapType: MapType.normal,
        markers: <Marker>{
             Marker(
                 markerId: const MarkerId("Custom Id"),
               position:  const LatLng(24.937518394943528, 89.93930462747812),
               icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
               infoWindow: const InfoWindow(title:"River Side"),
               draggable: false,
               onDragStart: (LatLng latLng){
                   print( latLng);
               },
               onDragEnd: (LatLng latLng){
                   print( latLng);
               },

             ),
             Marker(
                 markerId: const MarkerId("Custom Id_1"),
               position:  const LatLng(24.938780061949075, 89.93635755032301),
               icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
               infoWindow: const InfoWindow(title:"police Station"),
               draggable: false,
               onDragStart: (LatLng latLng){
                   print( latLng);
               },
               onDragEnd: (LatLng latLng){
                   print( latLng);
               },

             ),
             Marker(
                 markerId: const MarkerId("Custom Id_2"),
               position:  const  LatLng(24.930388061495243, 89.9309616163373),
               icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
               infoWindow: const InfoWindow(title:"Mohila Hostel"),
               draggable: false,
               onDragStart: (LatLng latLng){
                   print( latLng);
               },
               onDragEnd: (LatLng latLng){
                   print( latLng);
               },

             ),
        },
        polylines:<Polyline>{
             Polyline(
                 polylineId:const PolylineId("polyline"),
               color: Colors.purple,
               width: 3,
               jointType: JointType.round,
               onTap: (){
                   if (kDebugMode) {
                     print("Taped polyline");
                   }
               },
               points: const [
                 LatLng(24.937518394943528, 89.93930462747812),
                 LatLng(24.938780061949075, 89.93635755032301),
                 LatLng(24.930388061495243, 89.9309616163373),
                 LatLng(24.937518394943528, 89.93930462747812),
               ]
             ),
        },
        circles:<Circle>{
              Circle(
                 circleId:const CircleId("Point_1"),
               center:   const LatLng(24.937518394943528, 89.93930462747812),
               radius: 100,
               fillColor: Colors.green.shade200,
                strokeWidth: 4,
                strokeColor: Colors.green,
                onTap: (){
                   print("tapted on circle");
                }
             ),
              Circle(
              circleId:const CircleId("Point_2"),
              center:   const  LatLng(24.938780061949075, 89.93635755032301),
              radius: 100,
              fillColor: Colors.red.shade200,
              strokeWidth: 4,
              strokeColor: Colors.red,
              onTap: (){
                print("tapted on circle");
              }
          ),
              Circle(
            circleId: const CircleId("Point_3"),
            center:   const LatLng(24.930388061495243, 89.9309616163373),
            radius: 100,
            strokeWidth: 4,
            strokeColor: Colors.orange,
            fillColor: Colors.orange.shade200,
            onTap: (){
              print("Circle on Taped");
            }
          ),
        },
        polygons: <Polygon> {
          Polygon(polygonId: const PolygonId('poly-id'),
              fillColor: Colors.purple.shade300,
              strokeWidth: 0,
              onTap: () {
              print("polygon");
              },
              points: const [
                LatLng(24.933758246633698, 89.9429128691554),
                LatLng(24.93254152465824, 89.93584390729666),
                LatLng(24.930178276965087, 89.93865318596363),
                LatLng(24.93044704432781, 89.94625255465508),
              ]
          )
        },
      ),
    );
  }
}
