import 'package:flutter/material.dart';

class App extends StatefulWidget{
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App>{
  Widget build(BuildContext context) {
    return(MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(' Выберите тему ' , style: TextStyle(
                fontSize: 40,
                color: Colors.black54,
              ),),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  showDialog(context: context, builder: (BuildContext context) {
                    return AlertDialog(
                    actionsAlignment: MainAxisAlignment.spaceBetween,
                        title: const Text(' Выберите режим '),
                        content: const Text(
                            'Режим на время имеет некоторые дополнительные опции'),
                        actions: [
                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                              context, '/sum time', (route) => false);
                            });
                            }, child: const Text(' На время ')),



                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/sum', (route) => false);
                            });
                            }, child: const Text(' Нормальный ')),
                        ]
                    );
                  }
                  );
                  }
                    , child: const Text(' Сумма ' , style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                    ),)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  showDialog(context: context, builder: (BuildContext context) {
                    return AlertDialog(
                        actionsAlignment: MainAxisAlignment.spaceBetween,
                        title: const Text(' Выберите режим '),
                        content: const Text(
                            'Режим на время имеет некоторые дополнительные опции'),
                        actions: [
                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/subs time', (route) => false);
                            });
                          }, child: const Text(' На время ')),



                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/subs', (route) => false);
                            });
                          }, child: const Text(' Нормальный ')),
                        ]
                    );
                  }
                  );
                }
                    , child: const Text(' Вычитание ' , style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                    ),)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  showDialog(context: context, builder: (BuildContext context) {
                    return AlertDialog(
                        actionsAlignment: MainAxisAlignment.spaceBetween,
                        title: const Text(' Выберите режим '),
                        content: const Text(
                            'Режим на время имеет некоторые дополнительные опции'),
                        actions: [
                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/multi time', (route) => false);
                            });
                          }, child: const Text(' На время ')),



                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/multi', (route) => false);
                            });
                          }, child: const Text(' Нормальный ')),
                        ]
                    );
                  }
                  );
                }
                    , child: const Text(' Умножение ' , style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                    ),)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  showDialog(context: context, builder: (BuildContext context) {
                    return AlertDialog(
                        actionsAlignment: MainAxisAlignment.spaceBetween,
                        title: const Text(' Выберите режим '),
                        content: const Text(
                            'Режим на время имеет некоторые дополнительные опции'),
                        actions: [
                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/divi time', (route) => false);
                            });
                          }, child: const Text(' На время ')),



                          TextButton(onPressed: () {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/divi', (route) => false);
                            });
                          }, child: const Text(' Нормальный ')),
                        ]
                    );
                  }
                  );
                }
                    , child: const Text(' Деление ' , style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                    ),)),
              ],
            ),

          ],
        ),
      ),
    ));
  }
}
