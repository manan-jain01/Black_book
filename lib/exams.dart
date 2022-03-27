import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pyq_app/sem.dart';

import 'utils/constants.dart';

class exams extends StatefulWidget {
  final String sem;
  const exams({ Key? key,required this.sem}) : super(key: key);

  @override
  State<exams> createState() => _examsState();
}

class _examsState extends State<exams> {
  List<String> EXAMS= [
    "CLASS TEST 1",
    "CLASS TEST 2",
    "END SEMESTER",

  ];

   void selectexams(String exams){
    print(exams);
    // Write your logic here
    // Navigator.push(context, MaterialPageRoute(builder:(context)=>exams(Department: sem)));



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: Text(widget.sem, style: GoogleFonts.alice(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),),
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        itemBuilder: (context, index){
          return examstile(exams: EXAMS[index]);
        },
        itemCount: EXAMS.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
  Widget examstile({required String exams}){
    Size size= MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        selectexams(exams);
      },
      child: Container(
        width: size.width,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white
        ),
        child: Center(
          child: Text(exams, style: GoogleFonts.alice(fontStyle: FontStyle.italic, color: primaryColor,
              fontWeight: FontWeight.bold, fontSize: 20),),
        ),
      ),
    );
  }
}
