import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:webview/urls/website_url.dart';
class ExamList extends StatefulWidget {
  const ExamList({Key? key}) : super(key: key);

  @override
  _ExamListState createState() => _ExamListState();
}

class _ExamListState extends State<ExamList> {
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
        title: Text("Examination",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "serif",
              fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [SvgPicture.asset("assets/aiou.svg",width: 150,color: Colors.white,),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: ListTile(
                    horizontalTitleGap: 12,
                    title:Text("Examination",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.open_in_new,color: Colors.teal,),
                      onPressed: (){Get.to(()=>Website(title: "Examination",link: "https://www.aiou.edu.pk/examinations.asp",));},
                    ),
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
                    title:Text("Date Sheet",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.open_in_new,color: Colors.teal,),
                      onPressed: (){Get.to(()=>Website(title: "Date Sheet",link: "https://www.aiou.edu.pk/datesheet.asp",));
                      },
                    ),
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
                    title:Text("Rollno Slips",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.open_in_new,color: Colors.teal,),
                      onPressed: (){Get.to(()=>Website(title: "Rollno Slips",link: "https://www.aiou.edu.pk/rollnoslip.asp",));
                      },
                    ),
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
                    title:Text("Assignment Marks",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.open_in_new,color: Colors.teal,),
                      onPressed: (){Get.to(()=>Website(title: "Assignment Marks",link: "http://result.aiou.edu.pk/Assignments.asp",));
                      },
                    ),
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
                    title:Text("Result Details",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.open_in_new,color: Colors.teal,),
                      onPressed: (){Get.to(()=>Website(title: "Result Details",link: "http://result.https//aiou.edu.pk/Results.asp",));
                      },
                    ),
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
                    title:Text("Provisional Certificate",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.open_in_new,color: Colors.teal,),
                      onPressed: (){Get.to(()=>Website(title: "Provisional Certificate",link: "http://result.https//aiou.edu.pk/Completer.asp",));
                      },
                    ),
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
                    title:Text("Degree Tracking System",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.open_in_new,color: Colors.teal,),
                      onPressed: (){Get.to(()=>Website(title: "Degree Tracking System",link: "http://dts.https//aiou.edu.pk/",));
                      },
                    ),
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
                    title:Text(" Degree Verification System",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.open_in_new,color: Colors.teal,),
                      onPressed: (){Get.to(()=>Website(title: "Degree Verification System",link: "http://verification.aiou.edu.pk/",));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
