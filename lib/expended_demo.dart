import 'package:flutter/material.dart';

class ExpendedDemo extends StatelessWidget {
  const ExpendedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 25,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Milan"),
                Text("Hello"),
              ],
            ),
          ),
          Text("12:30 pm")
        ],
      ),
    );
  }
}

//     return Scaffold(
//       body: Column(
//         children: [
//           Flexible(
//             flex: 2,
//             fit: FlexFit.tight,
//             child: Container(
//               color: Colors.red,
//               child: const Icon(Icons.macro_off_sharp),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               color: Colors.yellow,
//             ),
//           ),
//           Flexible(
//             flex: 2,
//             fit: FlexFit.loose,
//             child: Container(
//               color: Colors.green,
//               child: const Icon(Icons.search),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               color: Colors.orangeAccent,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
