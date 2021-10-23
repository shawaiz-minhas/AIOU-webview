import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Website extends StatefulWidget {
  Website({Key? key, required this.link, required this.title})
      : super(key: key);
  final String link;
  final String title;

  @override
  State<Website> createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.teal,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.black,
              fontFamily: "serif",
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: WebView(
              initialUrl: widget.link,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
          ),
          isLoading
              ? Center(
                  child: SpinKitFadingCircle(
                    color: Colors.teal,
                    size: 50.0,
                  ),
                )
              : Stack(),
        ],
      ),
    );
  }
}
