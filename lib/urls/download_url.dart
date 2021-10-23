import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Downloads extends StatelessWidget {
  Downloads({Key? key, required this.link}) : super(key: key);
  final String link;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.teal,),
          onPressed: (){Navigator.pop(context);},
        ),
        centerTitle: true,
        title: Text("Downloads",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "serif",
              fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: WebView(
          initialUrl: link,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
