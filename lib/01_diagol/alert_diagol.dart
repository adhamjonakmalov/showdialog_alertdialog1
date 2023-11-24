import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dialogwitget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(offset: Offset(0, 5), blurRadius: 5, color: Colors.black)]),
                    child: AlertDialog(
                      title: Padding(
                        padding: const EdgeInsets.only(right: 280),
                        child: Text(
                          'IMPORTANT',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      ),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          'Prjvacy info',
                          style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 12, 12, 12)),
                        ),
                      ),
                      content: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'The backups created with this functionality may contain some sensitive data',
                          style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 25, 25, 25)),
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 30, bottom: 10),
                          child: Text(
                            'Keep in mind that people are able toviwe this data',
                            style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 104, 103, 103)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Text(
                            'We suggest to hide your data tar your primary',
                            style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 135, 134, 134)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(fontSize: 25, color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Got it',
                                  style: TextStyle(fontSize: 25, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text('Open Dialog'),
        ),
      ),
    );
  }
}
