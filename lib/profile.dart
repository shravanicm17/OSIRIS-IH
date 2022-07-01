import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text(
          'PROFILE',
          style:TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[500],
        currentIndex: 2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.electric_meter),
            label:'Connect',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label:'Analysis' ,
           // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'Profile',
           // backgroundColor: Colors.lightGreen,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey[300],
            height: double.maxFinite,
            width: double.maxFinite,
            padding: EdgeInsets.only(
              top: 250,
              left: 25,
              right: 25,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' \tCONTACT: 7219808011\n\n\n \tADDRESS: Krushna Nagar,Amravati\n\n\n \tDEVICE ID: 123654' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 170,
            width: 380,
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(90, 20, 20, 20),
                  blurRadius: 0.8,
                  offset: Offset(9,9),
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[400],
                    radius: 42,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text('Shravani Chinchmalatpure',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text('@ username',style: TextStyle(color: Colors.grey[800],),)

              ],
            )
          ),
        ],
      ),
    );
  }
}
