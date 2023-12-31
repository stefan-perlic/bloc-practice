import 'package:flutter/material.dart';

class CustomNotificationProfiles extends StatelessWidget {
  const CustomNotificationProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 5, bottom: 6),
      child: Row(
        children: [
          // First Column - Stack with two circle avatars
          SizedBox(
            width: 50,
            child: Stack(
              children: const [
                Positioned(
                  bottom: 10,
                  child: CircleAvatar(
                    radius: 12.5,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  right: 10,
                  child: CircleAvatar(
                    radius: 12.5,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1pYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 265,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      text: "Username, username2, username 3 and 34 others ",
                      style: TextStyle(
                        color: Color(0xFF173F5F),
                        fontWeight: FontWeight.w500,
                        height: 1.16667,
                      ),
                      children: [
                        TextSpan(
                          text: "liked your post",
                          style: TextStyle(
                            color: Color(0xFF173F5F),
                            fontWeight: FontWeight.w300,
                            height: 1.41667,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Third Column - Picture
          Container(
            height: 38,
            width: 38,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
