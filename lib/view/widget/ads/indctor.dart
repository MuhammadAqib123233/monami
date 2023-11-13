import 'package:flutter/material.dart';
import 'package:monami/core/constant/colorApp.dart';

class MainScren extends StatefulWidget {
  const MainScren({super.key});

  @override
  State<MainScren> createState() => _MainScrenState();
}

class _MainScrenState extends State<MainScren> {
  var _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.0),
            height: 150,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedindex = index;
                });
              },
              controller: PageController(viewportFraction: 0.95),
              itemCount: appList.length,
              itemBuilder: (context, index) {
                var banner = appList[index];
                var _scale = _selectedindex == index ? 1.0 : 0.8;
                return TweenAnimationBuilder(
                  duration: const Duration(milliseconds: 200),
                  tween: Tween(begin: _scale, end: _scale),
                  curve: Curves.ease,
                  child: banneritems(
                    appBanner: banner,
                  ),
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child: child,
                    );
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  appList.length,
                  (index) => indicator(
                      isactie: _selectedindex == index ? true : false)),
            ],
          )
        ],
      ),
    );
  }
}

class banneritems extends StatelessWidget {
  final Appbanner appBanner;
  const banneritems({
    Key? key,
    required this.appBanner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    image: DecorationImage(
          image: AssetImage(appBanner.thumbnakurl),
          fit: BoxFit.cover,
        ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      border: Border.all(
                          width: 1, color: AppColor.primaryColormonami),
                    ),
    );
  }
}

class Appbanner {
  final int id;
  final String thumbnakurl;
  Appbanner(this.thumbnakurl, this.id);
}

List<Appbanner> appList = [
  Appbanner('images/afich1.png', 1),
  Appbanner('images/afich2.png', 2),
  Appbanner('images/afich3.png', 3),
  Appbanner('images/afich4.png', 4),
  Appbanner('images/AFICH.png' , 5),
];

class indicator extends StatelessWidget {
  final bool isactie;

  indicator({
    Key? key,
    required this.isactie,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: isactie ? 11.0 : 7.0,
      height: isactie ? 11.0 : 7.0,
      decoration: BoxDecoration(
        color: isactie ? AppColor.buttommonami : AppColor.primaryColormonami,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
