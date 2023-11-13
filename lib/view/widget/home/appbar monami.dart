import 'package:flutter/material.dart';

class appbarmonami extends StatelessWidget {
  const appbarmonami({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color.fromARGB(255, 255, 205, 129),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('notification');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 255, 205, 129),
            ),
            onPressed: (() {}),
          ),
        ],
        flexibleSpace: Container(
            margin: EdgeInsets.only(top: 20),
            height: 150,
            width: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/monami1.png'),
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
            color: Colors.orange[200]!,
          );
        }),
      ),
      drawerScrimColor: Colors.orange.withOpacity(0.2),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          UserAccountsDrawerHeader(
              accountName: const Text("mouhssine"),
              accountEmail: const Text('mouhssine7emaoui@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                child: Image.network(
                  'https://th.bing.com/th/id/R.b6350e5011a7b61996efada66d100575?rik=7D6Ni11ELDKMoA&pid=ImgRaw&r=0',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              )),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg",
                      )))),
          ListTile(
            title: const Text('Home Page'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pushNamed("depar");
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Paramaitre'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: const Center(
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
          ListTile(
            title: const Text('Mon Compet'),
            leading: const Icon(Icons.card_travel),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Service Clients'),
            leading: const Icon(Icons.help_outline),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Help & Contact'),
            leading: const Icon(Icons.help),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Log Out'),
            leading: const Icon(Icons.logout),
            onTap: () {
              Navigator.of(context).pushNamed("login1");
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            height: 110,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('images/aa.png'))),
          )
        ]),
      ),
    );
  }
}
