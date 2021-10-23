import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
 runApp(Contact());
}
class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactPage(),
    );
  }
}
class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.teal,),
          onPressed: (){Navigator.pop(context);},
        ),
        centerTitle: true,
        title: Text("Contact Us",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "serif",
              fontWeight: FontWeight.bold),),
      ),
     body: Column(
       children: [
         SvgPicture.asset("assets/aiou.svg",width: 150,color: Colors.white,),
         Text("Further Queries/Feedback are welcome",style: TextStyle(color: Colors.white,fontSize: 18),),
         Padding(
           padding: EdgeInsets.all(10),
           child: Container(
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white
             ),
             child: ListTile(
               horizontalTitleGap: 12,
               title:Text("Director (Student Affairs)",style: TextStyle(fontSize: 18),),
               leading: Icon(Icons.person,color: Colors.teal,),
             ),
           ),
         ),
         Padding(
           padding: EdgeInsets.all(10),
           child: Container(
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white
             ),
             child: ListTile(
               horizontalTitleGap: 12,
               title:Text("http://support.aiou.edu.pk",style: TextStyle(fontSize: 18),),
               leading: Icon( Icons.language,color: Colors.teal,),
               onTap: (){launch("http://support.aiou.edu.pk");},
             ),
           ),
         ),
         Padding(
           padding: EdgeInsets.all(10),
           child: Container(
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white
             ),
             child: ListTile(
               horizontalTitleGap: 12,
               title:Text("(051) 111-112-468",style: TextStyle(fontSize: 18),),
               leading: Icon( Icons.phone,color: Colors.teal,),
               onTap: (){launch("tel:051111112468");},
             ),
           ),
         ),
         Padding(
           padding: EdgeInsets.all(10),
           child: Container(
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white
             ),
             child: ListTile(
               horizontalTitleGap: 12,
               title:Text("Allama Iqbal Open University, Sector H-8, Islamabad-44000",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18, decoration: TextDecoration.underline,),),
               leading: Icon(Icons.place,color: Colors.teal,),
               onTap: (){
                 launch("https://www.google.com/maps/dir//Allama+Iqbal+Open+University,+Islamabad+2+Ashfaq+Ahmed+Rd+H-8%2F2+H+8%2F2+H-8,+Islamabad,+Islamabad+Capital+Territory+44000/@33.6850236,73.054742,16z/data=!4m5!4m4!1m0!1m2!1m1!1s0x38dfbfd916b82f59:0xdcb4b6f257eaac74");},
             ),
           ),
         ),
         Divider(),
         Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 IconButton(
                   icon: Icon(Icons.facebook,size: 35,color: Colors.white,),
                   onPressed: (){launch("https://www.facebook.com/Lifeataiou/");},
                 ),
                 IconButton(
                   icon: Icon(FontAwesomeIcons.twitter,size: 35,color: Colors.white, ),
                   onPressed: (){launch("https://twitter.com/LIFEatAIOU?lang=en");},
                 ),
                 IconButton(
                   icon: Icon(FontAwesomeIcons.youtube,size: 35,color: Colors.white,),
                   onPressed: (){launch("https://www.youtube.com/aiou-official");},
                 )
               ],
             ),
           ),
         )
       ],
     ),
    );
  }
}
