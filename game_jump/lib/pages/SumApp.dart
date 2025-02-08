import 'dart:math';

import 'package:flutter/material.dart';

class SumApp extends StatefulWidget{
  const SumApp({super.key});

  @override
  State<SumApp> createState() => _SumAppState();
}

class _SumAppState extends State<SumApp>{

  static int number_1 = 0;

  static int number_2 = 10;

  static int count = 0;

  static int first = Random().nextInt(number_2) + number_1;

  static int second = Random().nextInt(number_2) + number_1;

  int answer = Random().nextInt(3) + 1;

  static int sum = first + second;

  int o1 = sum + 1;

  int o2 = sum - 3;

  int o3 = sum - 2;

  void NewData(){
    first = Random().nextInt(number_2) + number_1;

    second = Random().nextInt(number_2) + number_1;;

    answer = Random().nextInt(3) + 1;

    sum = first + second;

    o1 = Random().nextInt(10) + (sum - 5);

    o2 = Random().nextInt(8) + (sum - 4);

    o3 = Random().nextInt(5) + (sum - 2);
  }

  void floatButton_(){
    setState(() {
      showDialog(context: context, builder: (BuildContext context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          content: const Text( ' Выйти в меню ? ', textAlign: TextAlign.center,),
          actions: [
            TextButton(onPressed: () {
              setState(() {
                count = 0;
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false);
              });
            }, child: const Text(' да ')),

            TextButton(onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            }, child: const Text(' нет ')),
          ],
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Center ( child: Text(' Счёт = $count ',
            style: const TextStyle(
                fontSize: 25
    )),
          ),
        ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(' от $number_1 до $number_2 '),
                TextButton(onPressed: ()
                {
                  setState(() {
                    showDialog(context: context, builder: (BuildContext context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.center,
                        content: const Text( '  ', textAlign: TextAlign.center,),
                        actions: [
                          TextFormField(initialValue: number_1.toString(), onChanged: (text){
                            setState(() {
                              number_1 = int.parse(text);
                            });
                          },
                          ),
                          TextFormField(initialValue: number_2.toString(), onChanged: (text){
                            setState(() {
                              number_2 = int.parse(text);
                            });
                          },
                          ),
                          TextButton(onPressed: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          }, child: const Text(' Сохранить ' , textAlign: TextAlign.center,))
                        ],
                      );
                    });
                  });
                }, child: const Text('Изменить')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(' $first + $second = ' , style: const TextStyle(
                  fontSize: 50,
                ),),
              ],
            ),

             Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  if(answer == 1)
                    Text(' $sum ' , style: const TextStyle(
                      fontSize: 40,
                    ),)
                    else
                      Text(' $o1 ' , style: const TextStyle(
                        fontSize: 40,
                      ),),
                  IconButton(onPressed: (){
                    setState(() {
                    if(answer == 1) {
                    count++;
                  } else {
                    count = 0;
                  }

                    NewData();

                    if(o1 == sum){
                      o1 = o1 + 1;
                    }
                    if(o2 == sum){
                      o2 = o2 + 2;
                      if(o2 == o1){
                        o2 = o2 + 1;
                      }
                    }
                    if(o3 == sum){
                      o3 = o3 - 2;
                      if(o3 == o2){
                        o3 = o3 - 1;
                        if(o3 == o1){
                          o3 = o3 - 1;
                        }
                      }
                      if(o3 == o1){
                        o3 = o3 - 1;
                        if(o3 == o2){
                          o3 = o3 - 1;
                        }
                      }
                    }

                    });
                    },
                    icon: const Icon(Icons.add))
              ]
            ),
               Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if(answer == 2)
                      Text(' $sum ' , style: const TextStyle(
                        fontSize: 40,
                      ),)
                    else
                      Text(' $o2 ' , style: const TextStyle(
                        fontSize: 40,
                      ),),
                    IconButton(onPressed: (){
                      setState(() {
                        if(answer == 2) {
                          count++;
                        } else {
                          count = 0;
                        }

                        NewData();

                        if(o1 == sum){
                          o1 = o1 + 2;
                        }
                        if(o2 == sum){
                          o2 = o2 + 3;
                          if(o2 == o1){
                            o2 = o2 + 1;
                          }
                        }
                        if(o3 == sum){
                          o3 = o3 - 1;
                          if(o3 == o2){
                            o3 = o3 - 1;
                            if(o3 == o1){
                              o3 = o3 - 1;
                            }
                          }
                          if(o3 == o1){
                            o3 = o3 - 1;
                            if(o3 == o2){
                              o3 = o3 - 1;
                            }
                          }
                        }

                      });
                    },
                        icon: const Icon(Icons.add))
                ]
            ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if(answer == 3)
                      Text(' $sum ' , style: const TextStyle(
                        fontSize: 40,
                      ),)
                    else
                      Text(' $o3 ' , style: const TextStyle(
                        fontSize: 40,
                      ),),
                    IconButton(onPressed: (){
                      setState(() {
                        if(answer >= 3) {
                          count++;
                        } else {
                          count = 0;
                        }

                       NewData();

                        if(o1 == sum){
                          o1 = o1 + 1;
                        }
                        if(o2 == sum){
                          o2 = o2 - 1;
                          if(o2 == o1){
                            o2 = o2 - 1;
                          }
                        }
                        if(o3 == sum){
                          o3 = o3 + 2;
                          if(o3 == o2){
                            o3 = o3 + 1;
                            if(o3 == o1){
                              o3 = o3 + 1;
                            }
                          }
                          if(o3 == o1){
                            o3 = o3 + 1;
                            if(o3 == o2){
                              o3 = o3 + 1;
                            }
                          }
                        }

                      });
                    },
                        icon: const Icon(Icons.add))
                ]
            ),
          ],
            )],
        ),
        floatingActionButton: FloatingActionButton(onPressed:() {
          floatButton_();
          } , backgroundColor: Colors.blueAccent , child:  const Text(' Меню '),),
      ),
    ));
  }
}