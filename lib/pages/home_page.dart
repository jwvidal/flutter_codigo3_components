import 'package:flutter/material.dart';
import 'package:flutter_codigo3_components/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf1D2025),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.network(
                  'https://images.pexels.com/photos/6962866/pexels-photo-6962866.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  width: 230,
                ),
                Padding(padding: EdgeInsets.all(12.0),
                child: Text(
                  'COMPONENTES',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 1.7,
                  ),
                ),
                ),
                ItemListWidget(
                  title: 'Alertas',
                  subtitle: 'Modulo de alertas',
                  icon: Icons.notification_important,
                  toWidget: AlertPage(),
                ),
                ItemListWidget(
                    title: 'Avatares',
                    subtitle: 'Modulo de avatares',
                    icon: Icons.person,
                  toWidget: AlertPage(),
                ),
                ItemListWidget(
                    title: 'Cards',
                    subtitle: 'Modulo de cards',
                    icon: Icons.picture_in_picture,
                  toWidget: AlertPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemListWidget extends StatelessWidget {

   String title;
   String subtitle;
   IconData icon;
   Widget toWidget;

   ItemListWidget({
     required this.title,
     required this.subtitle,
     required this.icon,
     required this.toWidget,

   });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xff33353d),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> this.toWidget));
        },
        title: Text(
          this.title,
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.notification_important,
          color: Colors.white,
        ),
        subtitle: Text(
          this.subtitle,
          style: TextStyle(
              color: Colors.white
          ),
        ),
        trailing: Icon(Icons.chevron_right, color: Colors.white,),
      ),
    );
  }
}
