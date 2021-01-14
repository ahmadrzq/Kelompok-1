import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class googlemaps extends StatefulWidget {
  @override
  _googlemapsState createState() => _googlemapsState();
}

class _googlemapsState extends State<googlemaps> {
  final Set<Marker> _markers = {};
  final LatLng _position = LatLng(-7.2574719, 112.7520883);

  @override
  void initState(){
    _markers.add(
      Marker(
        markerId: MarkerId("-7.2574719, 112.7520883"),
        position: _position,
        icon: BitmapDescriptor.defaultMarker,
      )
    );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Maps'),
      ),

      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: _position,
          zoom: 14,
        ),
        markers: _markers,
      ),
    );
  }
}