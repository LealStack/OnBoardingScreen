import 'package:flutter/material.dart';
import 'package:qr_code_app/scan.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Boarding',
        home: _ElevatedButtonExample(),
        theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: const Color.fromARGB(255, 0, 0, 0),
        ));
  }
}

class _ElevatedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: const Color(0xFF380E4A)),
      backgroundColor: const Color(0xFF380E4A),
      body: SafeArea(
        child: Column(
          children: [
            const Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 28, 8, 0),
                child: Text(
                  'Ramped Workout',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFFEF8B60),
                  ),
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.topRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScanQrPage()));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(70, 40),
                  primary: const Color(0xFFEF8B60),
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text(
                  'Scanner',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 308, 8, 0),
                child: Container(
                  width: 300,
                  height: 100,
                  child: const Text(
                      'Blob of text which will contain instructions for the user on how to complete the workout and what to expect'),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(180, 40),
                    primary: const Color(0xFFEF8B60),
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text('Start'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
