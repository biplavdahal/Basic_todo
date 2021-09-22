import 'package:flutter/material.dart';



void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "TODO APP", 
  home: TODOAPP(),
));
class TODOAPP extends StatefulWidget {
  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  var listTODO=['Hello'];

  addTODO(String item){
    setState(() {
      listTODO.add(item);
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TODO APP"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
        ),
        body: ListView.builder(
            itemCount: listTODO.length,
            itemBuilder: (context,index){
              return ListTile(
                  leading: Icon(Icons.work),
                  title: Text('${listTODO[index]}',style: TextStyle(fontWeight: FontWeight.bold),)

              );


            }

        ));
  }
}



