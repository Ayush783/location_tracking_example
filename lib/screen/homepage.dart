import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong2/latlong.dart" as Latlng;

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Color(0xffAEAEAE),
                        size: 16,
                      ),
                      Text(
                        ' YOUR LOCATION',
                        style: TextStyle(
                          fontFamily: 'nova',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffaeaeae),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Asalat Nagar Muradnagar',
                      style: TextStyle(
                        fontFamily: 'nova',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Divider(
                      color: Color(0xffaeaeae),
                      thickness: 2,
                      height: 12,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
                    child: FlutterMap(
                      options: MapOptions(
                        center: Latlng.LatLng(28.7549869, 77.4950897),
                        zoom: 15.0,
                      ),
                      layers: [
                        TileLayerOptions(
                          urlTemplate:
                              "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                        ),
                        MarkerLayerOptions(
                          markers: [
                            Marker(
                              width: 80.0,
                              height: 80.0,
                              point: Latlng.LatLng(51.5, -0.09),
                              builder: (ctx) => Container(
                                child: FlutterLogo(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: Color(0xffd2d2d2),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -2),
                      color: Colors.black.withOpacity(0.35),
                      blurRadius: 16,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Track your order',
                            style: TextStyle(
                              fontFamily: 'nova',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'ETA: 20min',
                            style: TextStyle(
                              fontFamily: 'nova',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xffE37039),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              width: 1,
                              color: Color(0xffaeaeae),
                            ),
                          ),
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                          title: Text('Order received'),
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 24,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              width: 1,
                              color: Color(0xffaeaeae),
                            ),
                            bottom: BorderSide(
                              width: 1,
                              color: Color(0xffaeaeae),
                            ),
                          ),
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.adjust_sharp,
                            color: Color(0xffE37039),
                          ),
                          title: Text('Food being prepared'),
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 24,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color(0xffaeaeae),
                            ),
                          ),
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.data_usage,
                            color: Colors.grey,
                          ),
                          title: Text('Out for delivery'),
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
