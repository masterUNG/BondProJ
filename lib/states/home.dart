import 'package:bondproj/utility/my_constant.dart';
import 'package:bondproj/widgets/show_image.dart';
import 'package:bondproj/widgets/show_title.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildTopTitle(),
            buildContent(),
            buildTime(),
          ],
        ),
      ),
    );
  }

  Container buildContent() {
    return Container(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShowTitle(
            title: 'รหัสพนักงาน :',
            textStyle: MyConstant().h2Style(),
          ),
          ListTile(
            title: Text('XXXXXXXX'),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code),
            ),
            tileColor: Colors.blue.shade100,
          ),SizedBox(height: 16,),
          ShowTitle(
            title: 'สถานที่ Check In :',
            textStyle: MyConstant().h2Style(),
          ),
          ListTile(
            title: Text('XXXXXXXX'),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code),
            ),
            tileColor: Colors.blue.shade100,
          ),
        ],
      ),
    );
  }

  Widget buildTime() {
    return Container(
      decoration: BoxDecoration(color: MyConstant.light),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ShowTitle(
              title: 'Check In Date :',
              textStyle: MyConstant().h2Style(),
            ),
            ShowTitle(
              title: '2021-09-07 19:00:00 :',
              textStyle: MyConstant().h3Style(),
            ),
          ],
        ),
      ),
    );
  }

  Row buildTopTitle() {
    return Row(
      children: [
        buildLogo(),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowTitle(
                title: 'TAP CHECK IN',
                textStyle: MyConstant().h1Style(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container buildLogo() {
    return Container(
      width: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ShowImage(path: MyConstant.logo),
      ),
    );
  }
}
