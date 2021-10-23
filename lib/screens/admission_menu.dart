import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:webview/urls/website_url.dart';

class Admission_List extends StatefulWidget {
  @override
  _Admission_ListState createState() => _Admission_ListState();
}

class _Admission_ListState extends State<Admission_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.teal,),
          onPressed: (){Navigator.pop(context);},
        ),
        title: Text("Admission",
          style: TextStyle(
              color: Colors.black,

              fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SvgPicture.asset("assets/aiou.svg",width: 150,color: Colors.white,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Academic Calender",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title:"Academic Calender",link: "https://www.aiou.edu.pk/AcademicCalender.asp",));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Continuing Student",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title:"Continuing Student",link: "https://www.aiou.edu.pk/ContinueStudents.asp",));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Programmes",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title:"Programmes",link: "https://www.aiou.edu.pk/Ed_Programmes.asp",));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Eligibility",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title:"Eligibility",link: "https://www.aiou.edu.pk/Eligibility.asp",));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Admission Confirmation",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title:"Admission Confirmation",link: "https://www.aiou.edu.pk/Admission.asp",));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Old Objections Admission Forms",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title:"Old Objections Admission Forms",link: "https://www.aiou.edu.pk/Admission-Objection.asp",));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Current Objections Admission Forms",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title:"Current Objections Admission Forms",link: "http://adms.aiou.edu.pk/obj_ssearch.php",));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Admission Amendements",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title: "Admission Amendements",link: "http://adms.aiou.edu.pk/",));},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Refund of Fee",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title: "Refund of Fee",link: "http://adms.aiou.edu.pk/ref_refsearch.php",));},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("Books Dispatch Inquiry",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title: "Books Dispatch Inquiry",link: "http://adms.aiou.edu.pk/mlg/",));},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: ListTile(
                  horizontalTitleGap: 12,
                  title:Text("FAQs",style: TextStyle(fontSize: 18),),
                  trailing: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.open_in_new,color: Colors.teal,),
                    onPressed: (){Get.to(()=>Website(title: "FAQs",link: "https://www.aiou.edu.pk/FAQs.asp",));},
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
