import 'package:flutter/material.dart';


class task extends StatelessWidget {
  const task({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },child: const Icon(Icons.backspace,color: Colors.black,)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Task',style: TextStyle(color: Colors.black),),
        actions: [
          Padding(padding: EdgeInsets.only(right: 16),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color.fromARGB(0, 65, 60, 60),
              borderRadius: BorderRadius.circular(60)
            ),
            child: 
                Center(child: IconButton(icon: Icon(Icons.home,color: Colors.black,),onPressed: (){},)),
              
            
          ),)
        ],
      ),
    );
  }
}