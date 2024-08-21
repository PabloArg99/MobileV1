import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String output = "Palabra prueba";
  double size = 20;
  Color coloractual = Colors.black;
  bool _isvisible = true;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Visibility(
                  visible: _isvisible,
                  
                  child: Text(output,
                  style: TextStyle(fontSize: size, color : coloractual )),
                  ),
                
                
                
                
                SizedBox(height: 20),
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  
                  children : [
                      SizedBox(
                        width: 125,

                        child : FilledButton(
                  onPressed: () {
                    setState((){
                      size++;
                    });
                  },
                  child: const Text("+")
                         ),
                      ),
                      SizedBox(
                        width: 125,

                        child : FilledButton(
                      
                         onPressed: () {
                          setState((){
                              size--;
                           });
                           },
                        child: const Text("-")
                  
                        ),
                      ),

                      
                         
                       ]
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children : [
                    SizedBox(
                        width: 125,

                        child : FilledButton(
                       onPressed: () {
                        setState((){
                        coloractual = Colors.red;
                          });
                         },
                        child: const Text("Texto Rojo")
                   ),
                      ),

                      SizedBox(
                        width: 125,

                        child : FilledButton(
                       onPressed: () {
                        setState((){
                        coloractual = Colors.blue;
                          });
                         },
                        child: const Text("Texto Azul")
                   ),
                      ),
                      
                    
                      
               
                       ]
                ),
                    SizedBox(
                        width: 250,

                        child : FilledButton(
                       onPressed: () {
                        setState((){
                        _isvisible = true;
                          });
                         },
                        child: const Text("Mostrar Texto")
                   ),
                      ),
                      SizedBox(
                        width: 250,

                        child : FilledButton(
                       onPressed: () {
                        setState((){
                        _isvisible = false;
                          });
                         },
                        child: const Text("Ocultar Texto")
                   ),
                      ),

                
                      
            
          ]),
        ),
      )),
    );
  }
}
