import 'package:flutter/material.dart';
import 'manage_bookings_page.dart'; // Import the ManageBookingsPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/manageBookings': (context) => ManageBookingsPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLocked = true;
  bool isLoading = false;

  Future<void> _unlock() async {
    setState(() {
      isLoading = true;
    });
    // Simulate a network call or any async operation
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      isLocked = false;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back, color: Colors.white),
            SizedBox(width: 8),
            Text('Key'),
          ],
        ),
        backgroundColor: Color(0xFF6666CC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CustomClipPath(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Color(0xFF6666CC),
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(top: 16.0), // Add margin here
                  child: Text(
                    'ID: BEN30029',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomClipPath(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  color: Color(0xFF6666CC),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tushar Prakash',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Room No: 201 B',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (isLocked) {
                          _unlock();
                        }
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 3),
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: isLoading
                                    ? [
                                        Color.fromARGB(255, 94, 171, 209),
                                        Color.fromARGB(255, 112, 178, 211),
                                      ]
                                    : [
                                        Color.fromARGB(255, 191, 192, 192), // Light Blue
                                        Color.fromARGB(255, 170, 170, 172), // Dark Blue
                                      ],
                              ),
                            ),
                          ),
                          if (isLoading)
                            TweenAnimationBuilder<double>(
                              tween: Tween<double>(begin: 0, end: 1),
                              duration: Duration(seconds: 3),
                              builder: (context, value, child) {
                                return CircularProgressIndicator(
                                  strokeWidth: 15,
                                  value: value,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                  backgroundColor: Colors.grey.shade200,
                                );
                              },
                              onEnd: () {
                                setState(() {
                                  isLocked = false;
                                  isLoading = false;
                                });
                              },
                            ),
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    isLocked ? Icons.lock : Icons.lock_open,
                                    size: 50,
                                    color: isLocked ? Colors.grey : Colors.blue,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    isLocked
                                        ? (isLoading ? 'Unlocking...' : 'Locked')
                                        : 'Unlocked',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: isLocked ? Colors.grey : Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  if (!isLoading && isLocked)
                                    SizedBox(height: 4),
                                  if (!isLoading && isLocked)
                                    Text(
                                      'Tap to Unlock',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Column(
                      children: [
                        Text(
                          'Key not working?',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        GestureDetector(
                          onTap: () {
                            if (isLocked) {
                              _unlock();
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.refresh,
                                color: Color.fromARGB(255, 43, 55, 188),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Regenerate Key',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 43, 55, 188),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/manageBookings');
              }, 
              child: Text(
                "Go To Manage Booking"
              )
            )
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends StatelessWidget {
  final Widget child;

  CustomClipPath({required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: child,
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(size.width - 20, size.height / 4, size.width - 40, size.height / 2);
    path.quadraticBezierTo(size.width - 60, 3 * size.height / 4, size.width - 40, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
