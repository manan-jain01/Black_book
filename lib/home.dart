
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pyq_app/sem.dart';
import 'package:pyq_app/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> branches= [
    "CSE",
    "IT",
    "ECE",
    "MECHANICAL",
    "CHEMICAL",
    "CIVIL",
    "IPE"
  ];

  void selectDepartment(String dept){
    print(dept);
    // Write your logic here
    Navigator.push(context, MaterialPageRoute(builder:(context)=>sem(Department: dept)));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: Text('Previous Year Questions', style: GoogleFonts.alice(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),),
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        itemBuilder: (context, index){
          return deptTile(dept: branches[index]);
        },
        itemCount: branches.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }

  Widget deptTile({required String dept}){
    Size size= MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        selectDepartment(dept);
      },
      child: Container(
        width: size.width,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white
        ),
        child: Center(
          child: Text(dept, style: GoogleFonts.alice(fontStyle: FontStyle.italic, color: primaryColor,
              fontWeight: FontWeight.bold, fontSize: 20),),
        ),
      ),
    );
  }

}

