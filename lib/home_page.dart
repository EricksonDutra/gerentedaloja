// import 'package:flutter/material.dart';
// import 'package:gerentedaloja/widgets/input_field.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[850],
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(),
//           SingleChildScrollView(
//             child: Container(
//               margin: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const Icon(
//                     Icons.store,
//                     size: 150,
//                     color: Colors.pinkAccent,
//                   ),
//                   const InputField(
//                     icon: Icons.person_outline,
//                     hint: "Usuário",
//                     obscure: false,
//                   ),
//                   const InputField(
//                     icon: Icons.lock_outlined,
//                     hint: "Senha",
//                     obscure: true,
//                   ),
//                   const SizedBox(height: 32),
//                   SizedBox(
//                     height: 50,
//                     child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.pinkAccent),
//                         child: const Text('Entrar')),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
