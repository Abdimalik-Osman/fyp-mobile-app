import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// this is the main file
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOMALIA ONLINE PASSPORT APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF164E63, <int, Color>{
          50: Color(0xFF164E63),
          100: Color(0xFF164E63),
          200: Color(0xFF164E63),
          300: Color(0xFF164E63),
          400: Color(0xFF164E63),
          500: Color(0xFF164E63),
          600: Color(0xFF164E63),
          700: Color(0xFF164E63),
          800: Color(0xFF164E63),
          900: Color(0xFF164E63),
        }),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final cyan900Color = Color.fromRGBO(22, 78, 99, 1);
  final cyan700Color1 = Color.fromRGBO(14, 116, 144, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SOMALIA ONLINE PASSPORT APP')),
        drawer: Drawer(
          backgroundColor: cyan700Color1,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: cyan900Color,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text('Apply'),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://sopas.vercel.app/'),
                    ),
                  );
                },
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.visibility),
                title: Text('View Applicant'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://sopas.vercel.app/view'),
                    ),
                  );
                },
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.message),
                title: Text('Send Message'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://sopas.vercel.app/send'),
                    ),
                  );
                },
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.edit),
                title: Text('Update Appointment'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://sopas.vercel.app/update'),
                    ),
                  );
                },
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.exit_to_app),
                title: Text('Exit'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Image.asset(
                  'images/Somalia (1).jpg',
                  width: double.infinity,
                  height: 765,
                  fit: BoxFit.fill,
                )
                // Container(
                //  chil
                // ),
              ],
            ),
          ),
        ));
  }
}

class WebViewPage extends StatelessWidget {
  final String url;

  WebViewPage({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
