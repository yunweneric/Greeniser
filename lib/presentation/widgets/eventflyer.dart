import 'package:flutter/material.dart';

class EventFlyer extends StatelessWidget {
  final imgUrl;
  final flyerImgUrl;
  const EventFlyer({
    Key? key,
    this.imgUrl,
    this.flyerImgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/addprofile');
                        print("Useraccount Page");
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(imgUrl),
                        radius: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ISEC Cameroon',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Lato",
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          'Yaounde',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Lato",
                            fontSize: 10.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.teal,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/devotion');
            },
            onDoubleTap: () {
              print('double tap');
            },
            child: Container(
                height: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image(
                  image: AssetImage(flyerImgUrl),
                )
                // CachedNetworkImage(
                //   imageUrl:
                //       'https://cdn.pixabay.com/photo/2016/03/09/09/30/girl-1245835_960_720.jpg',
                //   fit: BoxFit.cover,
                //   width: double.infinity,
                //   height: 200.0,
                //   placeholder: (_, __) => Center(
                //     child: Container(
                //       width: 20,
                //       height: 20,
                //       child: CircularProgressIndicator(
                //         strokeWidth: 2.0,
                //         valueColor:
                //             AlwaysStoppedAnimation<Color>(kprimaryColor),
                //       ),
                //     ),
                //   ),
                // ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '22k',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Lato, Pacifico',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.chat_bubble_outline_rounded),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '22k',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Lato, Pacifico',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '22k',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Lato, Pacifico',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            thickness: 2.0,
          )
        ],
      ),
    );
  }
}
