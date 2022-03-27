import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pyq_app/exams.dart';

import 'utils/constants.dart';

class sem extends StatefulWidget {
  final String Department;
  const sem({ Key? key,required this.Department}) : super(key: key);

  @override
  State<sem> createState() => _semState();
}

class _semState extends State<sem> {
  List<String> Semester= [
    "SEMESTER 1",
    "SEMESTER 2",
    "SEMESTER 3",
    "SEMESTER 4",
    "SEMESTER 5",
    "SEMESTER 6",
    "SEMESTER 7",
    "SEMESTER 8",

  ];

   void selectSemester(String sem){
    print(sem);
    // Write your logic here
    Navigator.push(context, MaterialPageRoute(builder:(context)=>exams(sem: sem)));


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: Text(widget.Department, style: GoogleFonts.alice(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),),
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        itemBuilder: (context, index){
          return semtile(sem: Semester[index]);
        },
        itemCount: Semester.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
  Widget semtile({required String sem}){
    Size size= MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        selectSemester(sem);
      },
      child: Container(
        width: size.width,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white
        ),
        child: Center(
          child: Text(sem, style: GoogleFonts.alice(fontStyle: FontStyle.italic, color: primaryColor,
              fontWeight: FontWeight.bold, fontSize: 20),),
        ),
      ),
    );
  }
}
