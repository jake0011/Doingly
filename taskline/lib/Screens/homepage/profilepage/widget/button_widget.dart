import 'package:flutter/material.dart';
import 'package:taskline/global.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: listColor, shape: const StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(text),
        onPressed: onClicked,
      );
}





// import 'package:flutter/material.dart';

// class NumbersWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           buildButton(context, '4.8', 'Ranking'),
//           buildDivider(),
//           buildButton(context, '35', 'Following'),
//           buildDivider(),
//           buildButton(context, '50', 'Followers'),
//         ],
//       );
//   Widget buildDivider() => Container(
//         height: 24,
//         child: VerticalDivider(),
//       );

//   Widget buildButton(BuildContext context, String value, String text) =>
//       MaterialButton(
//         padding: EdgeInsets.symmetric(vertical: 4),
//         onPressed: () {},
//         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               value,
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//             ),
//             SizedBox(height: 2),
//             Text(
//               text,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       );
// }
