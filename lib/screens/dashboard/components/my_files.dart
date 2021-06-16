// import 'package:admin/responsive.dart';
// import 'package:flutter/material.dart';
// import 'package:admin/models/MyFiles.dart';
// import '../../../constants.dart';
// import 'file_info_card.dart';

// class MyFiles extends StatelessWidget {
//   const MyFiles({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final Size _size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               "My Files",
//               style: Theme.of(context).textTheme.subtitle1,
//             ),
//             ElevatedButton.icon(
//               style: TextButton.styleFrom(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: defaultPadding * 1.5,
//                   vertical:
//                       defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
//                 ),
//               ),
//               onPressed: () {},
//               icon: Icon(Icons.add),
//               label: Text("Add New"),
//             ),
//           ],
//         ),
//         SizedBox(height: defaultPadding),
//         Responsive(
//           mobile: FileInfoCardGridView(
//             crossAxisCount: _size.width < 650 ? 2 : 4,
//             childAspectRatio: _size.width < 650 ? 1.3 : 1,
//           ),
//           tablet: FileInfoCardGridView(),
//           desktop: FileInfoCardGridView(
//             childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class FileInfoCardGridView extends StatelessWidget {
//   const FileInfoCardGridView({
//     Key? key,
//     this.crossAxisCount = 4,
//     this.childAspectRatio = 1,
//   }) : super(key: key);

//   final int crossAxisCount;
//   final double childAspectRatio;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: demoMyFiles.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         crossAxisSpacing: defaultPadding,
//         mainAxisSpacing: defaultPadding,
//         childAspectRatio: childAspectRatio,
//       ),
//       itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
//     );
//   }
// }

import 'package:admin/models/MyFiles.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiless extends StatelessWidget {
  const MyFiless({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: FileInfoCardGrid(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGrid(),
          desktop: FileInfoCardGrid(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        )
      ],
    );
  }
}

class FileInfoCardGrid extends StatelessWidget {
  const FileInfoCardGrid({
    Key? key,
    this.childAspectRatio = 1,
    this.crossAxisCount = 4,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoMyFiles.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: defaultPadding,
        crossAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => FileInfoCard(
        info: demoMyFiles[index],
      ),
    );
  }
}
