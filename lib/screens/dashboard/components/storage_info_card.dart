// 


import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard(
      {Key? key,
      required this.title,
      required this.svgSrc,
      required this.filesAmount,
      required this.storage})
      : super(key: key);
  final String title, svgSrc;
  final int filesAmount;
  final double storage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      margin: EdgeInsets.only(
          left: defaultPadding / 2,
          right: defaultPadding / 2,
          top: defaultPadding / 2,
          bottom: defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$filesAmount Files",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Text("$storage GB")
        ],
      ),
    );
  }
}
