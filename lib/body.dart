import 'package:flutter/material.dart';

class body extends StatefulWidget {
  @override
  _body createState() => _body();
}

final _Email = TextEditingController();
final _Password = TextEditingController();

class _body extends State<body> {
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 80),
              const Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _Email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        fillColor: Colors.blue.shade600,
                        prefixIcon: const Icon(
                          Icons.email_sharp,
                          color: Colors.white,
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 5,
                            color: Colors.blue,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _Password,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      fillColor: Colors.blue,
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.white,
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          textAlign: TextAlign.right)),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => newpage()));
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          )),
                    ),
                  ),
                ],
              ),
            ]),
          )),
    ]);
  }
}

class newpage extends StatefulWidget {
  @override
  _newbody createState() => _newbody();
}

class _newbody extends State<newpage> {
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Profile'),
          titleSpacing: 2,
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.exit_to_app))
          ],
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
            margin: const EdgeInsets.all(40),
            child: FloatingActionButton(
              
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(_Email.text),
                      );
                    },
                  );
                },
                child: const Icon(Icons.plus_one))));
  }
}
