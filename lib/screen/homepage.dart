import 'package:flutter/material.dart';

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
                        size: 18,
                      ),
                      Text('  Your location'),
                    ],
                  ),
                  Text('Asalat Nagar Muradnagar'),
                  Divider(
                    color: Color(0xffd2d2d2),
                    thickness: 2.5,
                  ),
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
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
                          Text('Track your order'),
                          Text('ETA: 20min'),
                        ],
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        title: Text('Order received'),
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 24,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.adjust_sharp,
                          color: Colors.yellow,
                        ),
                        title: Text('Food being prepared'),
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 24,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.data_usage,
                          color: Colors.grey,
                        ),
                        title: Text('Out for delivery'),
                        contentPadding: EdgeInsets.zero,
                        minLeadingWidth: 24,
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
