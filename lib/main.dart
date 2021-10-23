import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webview/reusable.dart';
import 'package:webview/screens/examination.dart';
import 'screens/admission_menu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'urls/website_url.dart';
import 'urls/help_url.dart';
import 'screens/contact_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 500),
      debugShowCheckedModeBanner: false,
      home: WebApp(),

    );
  }
}

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/aiou.svg",width: 200,color: Colors.white,),
                Divider(),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){Get.to(()=>Website(title:'Official Website',link: "https://www.aiou.edu.pk/",));
                        },
                        child: Resuable(
                          icon: Icon(
                            Icons.language,
                            color: Colors.teal,
                          ),
                          Text: Text(
                            "Website",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){Get.to(()=>Admission_List());
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Admission_List()));
                        },
                        child: Resuable(
                          icon: Icon(
                            Icons.account_balance,
                            color: Colors.teal,
                          ),
                          Text: Text(
                            "Admission",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){Get.to(()=>Website(title: "Mailing",link: "http://adms.aiou.edu.pk/mlg/",));},
                        child: Resuable(
                          icon: Icon(
                            Icons.email,
                            color: Colors.teal,
                          ),
                          Text: Text(
                            "Mailing",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap:(){ Get.to(ExamList());
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>ExamList()));
                        },
                        child: Resuable(
                          icon: Icon(
                            Icons.border_color,
                            color: Colors.teal,
                          ),
                          Text: Text(
                            "Examination",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){Get.to(()=>ContactPage());},
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactPage()));},
                        child: Resuable(
                          icon: Icon(
                            Icons.phone,
                            color: Colors.teal,
                          ),
                          Text: Text(
                            "Contact",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){Get.to(()=>Helping(link: "http://support.aiou.edu.pk/",));},
                        child: Resuable(
                          icon: Icon(
                            Icons.help,
                            color: Colors.teal,
                          ),
                          Text: Text(
                            "Help Desk",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(thickness: 1,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      bottomNavigationBar: Container(
        height: 30,
        child: Column(
          children: [ Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Developed By:  ",style: TextStyle(fontSize: 12),),
              InkWell(
                onTap: (){
                  launch("https://www.facebook.com/shawaiz.prince.750/");},
                child: Text("Shawaiz Minhas ❤",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 12
                ),),)
            ],
          )],
        ),
      ),
    );
  }
}
