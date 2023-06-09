import 'package:flutter/material.dart';
import 'package:my_project/model_class/instagram_model_class/insta_model_class.dart';
import 'package:my_project/model_class/instagram_model_class/row_data_instagram.dart';

class InstaUi extends StatelessWidget {
  const InstaUi({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in instagramDetails) {
      instaData.add(InstagramUser.fromJson(element));
    }

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 80),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 58,
                        width: 58,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80 "),
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 10,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Your Story",
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                ),
                ...List.generate(
                  instaData.length,
                  (index) => Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.yellow.shade600,
                                  Colors.orange.shade400,
                                  Colors.red.shade800,
                                  Colors.purple
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                stops: const [0.1, 0.3, 0.6, 0.1],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 55,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.grey.shade900, width: 4),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(instaData[index].url!),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Data",
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.add_box_outlined,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.play_circle_filled_outlined,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 25,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            ...List.generate(
              instaData.length,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(instaData[index].url!),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Text(
                          instaData[index].name.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Container(
                    height: 450,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(instaData[index].url!),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                              size: 25,
                            ),
                            Icon(
                              Icons.message_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                            Icon(
                              Icons.send_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.bookmark_outline,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "\t\t178 Likes",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
