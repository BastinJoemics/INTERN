import 'package:flutter/material.dart';
import 'bottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
bool isToggled = false;
bool pressAttention = false;
bool iconcol = false;
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.more_vert ,
            color: Colors.black,
            size: 30,
            
          ),
          onPressed: () {
            
          },
        ),
         flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                   Colors.grey,
                   Colors.white,
             
              Colors.white
            ])          
         ),        
     ),
        
          actions: <Widget>[
             Padding(
      padding: EdgeInsets.only(top:15,right: 0.0),
      child: Text(("BSE"),style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),)
    ),
    Padding(
      padding: EdgeInsets.only(right: 0.0),
      child:Switch(
        
          value: isToggled  ,
          onChanged: (value){
                setState(() {
                isToggled = value;
          });
           
          },
          
          activeTrackColor: Colors.greenAccent,
          activeColor: Colors.green,
          inactiveThumbColor: Colors.black,
          inactiveTrackColor: Colors.grey,
        ),
    ),
         Padding(
      padding: EdgeInsets.only(top:15,right: 20.0),
      child: Text(("NSE"),style: TextStyle(color: Colors.grey,fontSize: 20, fontWeight: FontWeight.bold),)
    ),
  
  ],
        
                
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height:10
          ),
          Row(
          children: <Widget>[
            SizedBox(width: 30),
             new Text(("YES BANK LTD (YES B)"),
              style: TextStyle(fontSize: 20),),
            
      
            SizedBox(width: 40),
             Padding(padding: EdgeInsets.only(top:20,left:40),
              child:IconButton(
            icon: Icon(
              Icons.star_border,
            ),
            iconSize: 40,
            color: pressAttention ? Colors.red : Colors.grey,
             onPressed: () => setState(() => pressAttention = !pressAttention),
            splashColor: Colors.black,
           
          ),),
            
          ],
        ),
        Padding(padding: EdgeInsets.only(right:230),
         child: Text(('\$5,789.20'),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),
              Padding(padding: EdgeInsets.only(top:0,left:0,right: 0),
         child: Text(('^ +4.00 (5.28%)'),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.green),),),
        SizedBox(
          height: 20,
        ),
         Padding(
          padding:EdgeInsets.symmetric(horizontal:50.0),
          child:Container(
          height:2.0,
          width:600.0,
          color:Colors.purple),),
          SizedBox(
            height:10
          ),
          Row(children: <Widget>[
            
          Padding(padding: EdgeInsets.only(left:220),
         child: Text(('Performance'),
              style: TextStyle(fontSize: 20,color: Colors.black),),),
               Padding(padding: EdgeInsets.only(left:0),
              child:IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down,
            ),
            iconSize: 20,
            color: Colors.grey,
            splashColor: Colors.black,
            onPressed: () {},
          ),),
              ]),
              Container(decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 7.0,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
              Colors.grey,
              

             Colors.grey[200],
             Colors.white,
              
            ])),width: 370,
           child: FlatButton(
          child: Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                         Container(
                          child: Icon(
                            Icons.all_inclusive,
                            size: 20,
                            color: Colors.purple[400],
                          ),
                        ),
                      Padding(padding: EdgeInsets.only(left: 10),
                       child:Container(
                            child: Text(
                          ("Performance"),
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),),]),
                      SizedBox(height: 10),
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:20.0),
                         child:Container(
                         height:2.0,
                            width:600.0,
                              color:Colors.purple),),
                               SizedBox(height: 20),
                      Row(children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.call_missed_outgoing,
                            size: 20,
                            color: Colors.purple[400],
                          ),
                        ),
                        Container(
                          child: Text(
                            'Daily:',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 5.0),
                        ),
                        Container(
                          child: Text(
                            '+1.6%',
                            style: TextStyle(color: Colors.green, fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 5.0),
                        ),
                        Container(
                          child: Icon(
                            Icons.calendar_today,
                            size: 20,
                            color: Colors.purple[400],
                          ),
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 5.0),
                        ),
                         Container(
                          child: Text(
                            'YTD:',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 5.0),
                        ),
                        Expanded(child:
                        Container(
                          child: Text(
                            '+15.62%',
                            style: TextStyle(color: Colors.green, fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 5.0),
                        ),),

                      ]),
                      SizedBox(height: 20,),
                      Row(children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.next_week,
                            size: 20,
                            color: Colors.purple[400],
                          ),
                        ),
                        Container(
                          child: Text(
                            'Week:',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 5.0),
                        ),
                        Container(
                          child: Text(
                            '-9.29%',
                            style: TextStyle(color: Colors.redAccent, fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 5.0),
                        ),
                        Container(
                          child: Icon(
                            Icons.calendar_view_day,
                            size: 20,
                            color: Colors.purple[400],
                          ),
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.fromLTRB(18.0, 10.0, 0.0, 5.0),
                        ),
                         Container(
                          child: Text(
                            'YEAR:',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 5.0),
                        ),
                        Expanded(child:
                        Container(
                          child: Text(
                            '+52.6%',
                            style: TextStyle(color: Colors.redAccent, fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 5.0),
                        ),),

                      ]),
                      SizedBox(height: 20,),
                      Row(children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.event_note,
                            size: 20,
                            color: Colors.purple[400],
                          ),
                        ),
                        Container(
                          child: Text(
                            'Month:',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                        ),
                        Container(
                          child: Text(
                            '+2.6%',
                            style: TextStyle(color: Colors.green, fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                        ),
                        Container(
                          child: Icon(
                            Icons.note,
                            size: 20,
                            color: Colors.purple[400],
                          ),
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.fromLTRB(24.0, 0.0, 0.0, 0.0),
                        ),
                         Container(
                          child: Text(
                            'YEAR 3:',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                        ),
                        Expanded(child:
                        Container(
                          child: Text(
                            '-23.47%',
                            style: TextStyle(color: Colors.redAccent, fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                        ),),

                      ]),
                      SizedBox(height: 20,),
                     
                    
                     
                     
                    ],
                  ),
                  margin: EdgeInsets.only(left: 20.0),
                ),
              ),
            ],
          ),
          onPressed: () {},
          padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
            ),
         
        ],
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.purple[400],
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          color: Colors.transparent,
          elevation: 9.0,
          clipBehavior: Clip.antiAlias,
          child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                  color: Colors.black),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width / 2 - 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.home),
                              color: iconcol ?Colors.redAccent: Colors.white,
                              highlightColor: Colors.purple,
                              onPressed: ()  => setState(() => iconcol = !iconcol),
                            ),
                            IconButton(
                              icon: Icon(Icons.library_books),
                              color: iconcol ?Colors.white: Colors.redAccent,
                              onPressed: () => setState(() => iconcol = !iconcol),
                            ),
                          ],
                        )),
                    Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width / 2 - 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.star_border),
                              color: Colors.white,
                              onPressed: (){},
                            ),
                            IconButton(
                              icon: Icon(Icons.person_outline),
                              color:  Colors.white,
                              onPressed: (){},
                            )
                          ],
                        )),
                  ]))),
    );
  }


}
