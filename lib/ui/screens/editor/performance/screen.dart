// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (p0, p1) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 30, left: 20, bottom: 5),
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.black38,
//                     gradient: const LinearGradient(colors: [
//                       Colors.white,
//                       Colors.black12,
//                     ]),
//                     border: Border.all(color: Colors.black45),
//                     borderRadius:
//                         const BorderRadius.vertical(top: Radius.circular(10))),
//                 width: p1.maxWidth - 200,
//                 height: 50,
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Builder(
//                         builder: (context) {
//                           return Row(
//                             children: [
//                               IconButton(
//                                   onPressed: () {}, icon: Icon(Icons.save)),
//                               IconButton(
//                                   onPressed: () {}, icon: Icon(Icons.publish)),
//                               IconButton(
//                                   onPressed: () {}, icon: Icon(Icons.delete)),
//                             ],
//                           );
//                         },
//                       ),
//                       Builder(
//                         builder: (context) {
//                           return Row(
//                             children: [
//                               TextButton(
//                                 style: ButtonStyle(textStyle:
//                                     MaterialStateTextStyle.resolveWith(
//                                         (states) {
//                                   if (states.contains(MaterialState.hovered) ||
//                                       states.contains(MaterialState.focused)) {
//                                     return TextStyle(color: Colors.black38);
//                                   }
//                                   if (states.contains(MaterialState.pressed)) {
//                                     return TextStyle(color: Colors.blue);
//                                   }
//                                   return TextStyle(color: Colors.black);
//                                 })),
//                                 onPressed: () {},
//                                 child: Text(
//                                   "image",
//                                 ),
//                               ),
//                               TextButton(
//                                   style: ButtonStyle(
//                                       shape: MaterialStatePropertyAll(
//                                           RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(10)))),
//                                       side: MaterialStateBorderSide.resolveWith(
//                                           (states) {
//                                         if (states.contains(
//                                                 MaterialState.hovered) ||
//                                             states.contains(
//                                                 MaterialState.focused)) {
//                                           return BorderSide(
//                                               color: Colors.black38);
//                                         }
//                                         if (states
//                                             .contains(MaterialState.pressed)) {
//                                           return BorderSide(color: Colors.blue);
//                                         }
//                                         return BorderSide(
//                                             color: Colors.black54);
//                                       }),
//                                       elevation: MaterialStatePropertyAll(3)),
//                                   onPressed: (() {}),
//                                   child: Text(
//                                     "code",
//                                     style: TextStyle(color: Colors.red),
//                                   )),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     "H1",
//                                     style: TextStyle(color: Colors.black),
//                                   )),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     "H2",
//                                     style: TextStyle(color: Colors.black),
//                                   ))
//                             ],
//                           );
//                         },
//                       )
//                     ]),
//               ),
//             ),
//             editor.QuillEditor(
//                 controller: editor.QuillController.basic(),
//                 focusNode: FocusNode(),
//                 scrollController: ScrollController(),
//                 scrollable: true,
//                 padding: EdgeInsets.all(8),
//                 autoFocus: false,
//                 readOnly: false,
//                 expands: false),
//   }
// }