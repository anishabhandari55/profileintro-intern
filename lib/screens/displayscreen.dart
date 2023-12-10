import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.blueGrey.shade300,
        child: content(),
      )
    );
  }
}

Widget content(){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(height: 50,),
        const CircleAvatar(
          radius: 90.0,
          backgroundImage: AssetImage(
            'assets/images/anisha.jpg',   
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('Profile Intro', style: TextStyle(
          fontFamily: 'Barlow',
          fontSize: 25,
          fontWeight: FontWeight.w300,
          color: Colors.brown,
        ),),
        const SizedBox(
          height: 30,
        ),
        Description(text: "anisha bhandari", color: Colors.blue.shade100,),
        fixedgap(),
        Description(text: "anishabhandari2022@gmail.com", color: Colors.teal.shade100),
        fixedgap(),
        Description(text: "Sophomore", color: Colors.green.shade100),
        fixedgap(),
        Description(text: "9829080944", color: Colors.blueGrey.shade200),
        fixedgap(),
        Description(text: "Nawalpur, Gandaki", color: Colors.indigo.shade100,),
        fixedgap(),
        Description(text: "Electronics Engineering", color: Colors.deepPurple.shade100)
      ],),
    ),
  );
}


class Description extends StatelessWidget {
  final String text;
  final Color color;
  Description({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
    width: size.width*0.67,
    height: size.height*0.083,
    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
     text,
     textAlign: TextAlign.center,
     style: const TextStyle(
      fontFamily: 'Barlow',
      fontSize: 20,
    ),),
  );
}
}

Widget description({required String text}){
  String text= '';
  return Container(
    width: double.infinity,
    height: 40,
    margin: EdgeInsets.all(25),
    padding: EdgeInsets.all(10),
    child: Text(
     text,
     style: const TextStyle(
      fontFamily: 'Barlow',
      fontSize: 20,
    ),),
  );
}

Widget fixedgap(){
  return SizedBox(height: 20,);
}

