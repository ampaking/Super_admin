// import 'package:flutter/material.dart';

// import '../../../constants.dart';
// import 'chart.dart';
// import 'storage_info_card.dart';

// class StarageDetails extends StatelessWidget {
//   const StarageDetails({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(defaultPadding),
//       decoration: BoxDecoration(
//         color: secondaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Storage Details",
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           SizedBox(height: defaultPadding),
//           // Chart(),
//           StorageInfoCard(
//             svgSrc: "assets/icons/Documents.svg",
//             title: "Documents Files",
//             amountOfFiles: "1.3GB",
//             numOfFiles: 1328,
//           ),
//           StorageInfoCard(
//             svgSrc: "assets/icons/media.svg",
//             title: "Media Files",
//             amountOfFiles: "15.3GB",
//             numOfFiles: 1328,
//           ),
//           StorageInfoCard(
//             svgSrc: "assets/icons/folder.svg",
//             title: "Other Files",
//             amountOfFiles: "1.3GB",
//             numOfFiles: 1328,
//           ),
//           StorageInfoCard(
//             svgSrc: "assets/icons/unknown.svg",
//             title: "Unknown",
//             amountOfFiles: "1.3GB",
//             numOfFiles: 140,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Text(
              "Storage Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          SizedBox(
            height: defaultPadding,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            filesAmount: 1000,
            storage: 1.5,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            filesAmount: 1490,
            storage: 11.5,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            filesAmount: 4546,
            storage: 2.5,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown Files",
            filesAmount: 1200,
            storage: 0.5,
          ),
        ],
      ),
    );
  }
}
