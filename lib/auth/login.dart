import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool _isHovering = false;
  bool _showPassword = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ScaleTransition(
              //   scale: _animation,
              //   child: Image.asset('assets/logo.png', height: 100),
              // ),
              SizedBox(height: 20),
              Text(
                'Welcome to News App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
                ),
              ),
              SizedBox(height: 20),
              AnimatedOpacity(
                opacity: _isHovering ? 1.0 : 0.8,
                duration: Duration(milliseconds: 300),
                child: MouseRegion(
                  onEnter: (_) => setState(() => _isHovering = true),
                  onExit: (_) => setState(() => _isHovering = false),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: _isHovering ? Colors.teal[100] : Colors.teal[200],
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.withOpacity(0.5),
                          blurRadius: 10.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              suffixIcon: IconButton(
                                icon: Icon(_showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 30),
                          MouseRegion(
                            onEnter: (_) => setState(() {
                              _isHovering = true;
                            }),
                            onExit: (_) => setState(() {
                              _isHovering = false;
                            }),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: _isHovering ? 220 : 200,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // primary: Colors.teal,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text('Logging In'),
                                    ));
                                  }
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
