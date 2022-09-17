import 'package:flutter/material.dart';

import '../constants.dart';
import 'my_text.dart';

class CartCard extends StatefulWidget {
  const CartCard({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.onRemove,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;
  final double price;
  final VoidCallback onRemove;
  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int count = 1;
  // late double price;
  //
  // @override
  // void initState() {
  //   price = widget.price;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 96,
        child: Row(
          children: [
            Image.asset(getAsset(widget.image)),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    data: widget.title,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  SizedBox(height: 5),
                  MyText(
                    data: widget.description,
                    fontSize: 14,
                    color: kDarkGrayColor,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (count == 1) {
                            widget.onRemove();
                          } else {
                            count--;
                          }
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.remove,
                            color: kDarkGrayColor.withOpacity(0.8),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: kDarkGrayColor.withOpacity(0.5),
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                      MyText(
                        data: '$count',
                        horizontalMargin: 10,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      InkWell(
                        onTap: () {
                          count++;
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.add,
                            color: kPrimaryColor,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: kDarkGrayColor.withOpacity(0.5),
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: widget.onRemove,
                  child: Icon(Icons.close),
                ),
                MyText(data: '${(widget.price * count).toStringAsFixed(2)}\$'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
