import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: UserPanel(),
));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text('Counter', style: TextStyle(color: Colors.redAccent),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
          child: Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  const Text('Artur', style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                  ),),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  const CircleAvatar(backgroundColor: Colors.blue, radius: 30, child: Icon(Icons.account_circle),),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    children: const [
                      Icon(Icons.email, size: 22,),
                      Padding(padding: EdgeInsets.only(left: 1)),
                      Text('artur.kostetskyi@gmail.com', style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Roboto-Black',
                      ),),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Text('Count: $count'),
                ],
              ),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add)),
    );
  }
}








// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.deepPurpleAccent),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('myApp'), centerTitle: true,),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment ,
//           children: [
//             Text("Text"),
//             TextButton(onPressed: () {}, child: Text('Button')),
//           ],
//         ),
//           // Image(
//           //   image: NetworkImage('https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29vbCUyMHBpY3xlbnwwfHwwfHw%3D&w=1000&q=80'),
//           // )
//           //ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.ac_unit), label: Text('dasd'))
//           // ElevatedButton(onPressed: () {}, child: Text('Ku')),
//           //TextButton(onPressed: () {},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent) ) , child: const Text('Puk', style: TextStyle(fontSize: 40, color: Colors.amber),) )
//           // Icon(Icons.add_a_photo, size: 50, color: Colors.amber,),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.red,
//           onPressed: () {
//             print('click');
//           },
//           child: const Text('Press', style: TextStyle(
//             fontFamily: 'Roboto'
//           ),),
//         ),
//       ),
//     );
//   }
// }
