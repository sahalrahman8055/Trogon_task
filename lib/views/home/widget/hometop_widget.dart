import 'package:flutter/material.dart';

class HomeTopWidget extends StatelessWidget {
  final String? name;
  HomeTopWidget({
    super.key,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 260,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 121, 79, 177),
                borderRadius: BorderRadius.circular(20)),
          ),
          const Positioned(
            left: 320,
            top: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/avatarimage/profile.jpeg"),
              radius: 25,
            ),
          ),
          Positioned(
            left: 240,
            top: 60,
            child: Container(
              height: 35,
              width: 65,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "10",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 172, 47)),
                  ),
                  Image.asset(
                    "assets/avatarimage/doller.png",
                    height: 40,
                    width: 40,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hi Good Morning !",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
                Text(name ?? "",
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Selected Course",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        const Text(
                          "Montessori",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 121, 79, 177),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Change",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.compare_arrows_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
