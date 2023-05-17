import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  late String greatwave = widget.box.imagePath;
  @override
  double fontSizeCustom = 25;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Scnackbar'),
                  duration: Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
        //automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(kDouble10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: kDouble5,
              ),
              Image.asset(greatwave),
              Wrap(
                spacing: 7,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        greatwave = widget.box.editImage1;
                      });
                    },
                    child: const Text(
                      '1st Art',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        greatwave = widget.box.editImage2;
                      });
                    },
                    child: const Text(
                      '2nd Art',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        greatwave = widget.box.editImage3;
                      });
                    },
                    child: const Text(
                      '3rd Art',
                    ),
                  ),

                  // TextButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       greatwave = 'images/great wave of kanagawa.png';
                  //     });
                  //   },
                  //   child: const Text('medium text'),
                  //   style: TextButton.styleFrom(
                  //       foregroundColor: Colors.white,
                  //       backgroundColor: Colors.black),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       greatwave = 'images/great wave of kanagawa.png';
                  //     });
                  //   },
                  //   child: const Text('large text'),
                  // ),
                  // // const SizedBox(
                  // //   width: 500,
                  // // ),
                  // FilledButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       fontSizeCustom = 70;
                  //     });
                  //   },
                  //   child: const Text('v.large text'),
                  // ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    fontSize: fontSizeCustom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: kDouble5,
              ),
              Text(
                description,
                style: TextStyle(fontSize: kDouble20),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: kDouble20,
              ),
              Text(
                description,
                style: TextStyle(fontSize: kDouble20),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
