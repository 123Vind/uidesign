import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;

void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        value = checkBoxState;
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      resizeToAvoidBottomInset: false,
    
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: const Icon(Icons.menu,color: Colors.black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color.fromARGB(255, 250, 248, 248)),
        title: const Text('Dashboard',style: TextStyle(color: Colors.black),),
        actions: [
          Padding(padding: EdgeInsets.only(right: 16),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(60)
            ),
            child: 
                Center(child: IconButton(icon: Icon(Icons.home,color: Colors.black,),onPressed: (){},)),
              
            
          ),)
        ],
      ),

    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
        child: Expanded(
          child: Column( 
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 233, 231, 231),
                      offset: Offset(5.0,5.0),
                      blurRadius: 5,
                    ),
                  ],         
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Most Priority Task',style: TextStyle(fontSize: 14,color: Colors.red,fontWeight: FontWeight.bold),),
                          Container(
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.work)),
                          Checkbox(value: value, onChanged: checkBoxCallBack,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text('Task Title',style: TextStyle(fontSize: 12),),
                            Text('Task Title description',style: TextStyle(fontSize: 12),)
                            ],
                          ),
                                          
                        ],
                      ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 8),
                           child: Text('Start',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                         )
                      ]

                    ),),
                    Container(padding: EdgeInsets.only(right: 16),width: double.infinity,child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("2:00:00",style: TextStyle(fontSize: 12),),
                      ],
                    ))
                  ],
                ),
              ),
             Expanded(
        child: GridView.count(crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        
        children: [
          Container(
            alignment: Alignment.topLeft,child: cards()),
          cards(),
          cards(),
          cards(),
        ],
        
        ),
             )
            ],
              
          ),
        ),
      ),
    ),

    floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.blueAccent,child: Icon(Icons.add,),),
    );
  }
}




class cards extends StatefulWidget {
  const cards({ Key? key }) : super(key: key);

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return Container(     
          
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 233, 231, 231),
                      offset: Offset(5.0,5.0),
                      blurRadius: 5,
                    ),
                  
                  ],            
                ),
      
            child: Column(children:
             [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                   Expanded(
                     child: Container(
                  
                       decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(10),
                       ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Padding(
                                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 0),
                                      child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                                Center(
                                                  child: Container(
                                                  height: 30,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  child: IconButton(
                                                    icon: Icon(Icons.work),
                                                    onPressed: (){},
                                                  ),
                                              ),
                                                ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        child: Text('5 Task',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                      ),
                                          ],
                                          ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                                      child: Column(
                                      
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                              
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        child: Text('Work',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                      ),
                                       Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        child: Text('Some Special task',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 58, 57, 57)),),
                                      ),
                                          ],
                                          ),
                                  ), 
                            Padding(
                            
                                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                   
                                      children: [
                                      Padding(padding: EdgeInsets.only(left:16,right: 4),child: Text('2-completed',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.green),)),
                                      Container(
                                        height: 10,
                                        width: 1,
                                        color: Colors.black,
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 4),child: Text('2 due',style: TextStyle(fontSize: 12,color: Colors.red),)),
                                    
                                          ],
                                          ),
                                  ), 
                                 ],
                         
                               ),
                             ),
                   ),
        
              ],
            ),
            ],),
     
    );
  }
}