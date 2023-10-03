import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/prof/home/DRAWER.dart';
import 'package:monami/controller/users/auth/Login_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/core/constant/routes.dart';
import 'package:monami/view/screen/users/home/msg.dart';
import 'package:monami/view/screen/admin/home/homepage.dart';
import 'package:monami/view/screen/admin/home/profil.dart';
import 'package:monami/view/widget/auth/cstmBottomAuth.dart';

class Homescrenprof extends StatefulWidget {
  const Homescrenprof({super.key});

  @override
  State<Homescrenprof> createState() => _HomescrenprofState();
}

class _HomescrenprofState extends State<Homescrenprof> {
  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  List<Widget> _widgetOptions = <Widget>[
    HomePageprof(),
    msg(),
    profprofile(),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    appareprofcontroller controolerdrw = Get.put(appareprofcontroller());
    LogincontrollerImp controller = Get.put(LogincontrollerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
                           color: AppColor.buttommonami

            ),
            onPressed: () {
              Navigator.of(context).pushNamed('notification');
            },
          ),
        ],
        flexibleSpace: Container(
            margin: EdgeInsets.only(top: 40),
            height: 150,
            width: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/monami.png'),
                  fit: BoxFit.fitHeight),
              // gradient: LinearGradient(
              //   colors: [ Color.fromARGB(255, 241, 199, 135),Color.fromARGB(255, 241, 199, 135)],
              //   begin: Alignment.bottomLeft,
              //   end: Alignment.bottomRight
              //   )
            )),
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
            ),
              color: AppColor.buttommonami
          );
        }),
      ),
      drawerScrimColor: AppColor.buttommonami.withOpacity(0.2),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColor.white, Color(0xffF7EAD6)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: ListView(padding: EdgeInsets.zero, children: [
            UserAccountsDrawerHeader(
                accountName: Text(
                  '${controolerdrw.username}',
                  style: TextStyle(color: AppColor.black),
                ),
                accountEmail: Text(
                  '${controolerdrw.email}',
                  style: TextStyle(color: AppColor.black),
                ),
               decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')
              ),
            ),
          ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    '1'.tr,
                    style: TextStyle(color: AppColor.black),
                  ),
                  leading: const Icon(
                    Icons.home,
                    color: AppColor.black,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed("Homescreenprof");
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.card_travel,
                    color: AppColor.black,
                  ),
                  title: Text(
                    '2'.tr,
                    style: TextStyle(color: AppColor.black),
                  ),
                  onTap: () {},
                  trailing: ClipOval(
                    child: Container(
                      color: Colors.red,
                      width: 20,
                      height: 20,
                      child:  Center(
                        child: Text(
                          '8',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.Setting);
                  },
                  child: ListTile(
                    title: Text(
                      '3'.tr,
                      style: TextStyle(color: AppColor.black),
                    ),
                    leading: Icon(Icons.settings, color: AppColor.black),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.serviceClients);
                  },
                  child: ListTile(
                    title: Text(
                      '4'.tr,
                      style: TextStyle(color: AppColor.black),
                    ),
                    leading:
                        const Icon(Icons.help_outline, color: AppColor.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 240),
            cstmBottomchesir(
              onPressed: () {
                              Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("91".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                     controller.logouat();
                    //  Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
              },
              text: '5'.tr,
            )
          ]),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        onDestinationSelected: (_selectedIndex) => setState(
          () => this._selectedIndex = _selectedIndex,
        ),
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,color: AppColor.buttommonami,
            ),
            selectedIcon:Icon(
              Icons.home,color: AppColor.buttommonami,
            ), 
            label: 'Home',
          ),
          NavigationDestination(
             icon: Icon(
              Icons.message_outlined,color: AppColor.buttommonami,
            ),
            selectedIcon:Icon(
              Icons.message,color: AppColor.buttommonami,
            ), 
            label: 'Message',
          ),
          NavigationDestination(
             icon: Icon(
              Icons.person_outlined,color: AppColor.buttommonami,
            ),
            selectedIcon:Icon(
              Icons.person,color: AppColor.buttommonami,
            ), 
              label: 'Profile'),
        ],
        selectedIndex: _selectedIndex,
        // onTabChange: (index) {
        //   setState(() {
        //     _selectedIndex = index;
        //   });
        // },
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          AppColor.black,
          AppColor.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
