import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.coffee});
  final Coffee coffee;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const Gap(68),
          buildHeader(),
          const Gap(24),
          buildImage(),
          const Gap(24),
          buildMainInfo(),
          const Gap(24),
        ],
      ),
      // bottomNavigationBar: buildPrice(),
    );
  }

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const ImageIcon(
            AssetImage("assets/icons/arrow_left.png"),
            color: Color(0xff2A2A2A),
          ),
        ),
        const Text(
          "Detail",
          style: TextStyle(
            color: Color(0xff242424),
            fontFamily: "Sora",
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage("assets/icons/Heart_Outlined.png"),
          ),
        ),
      ],
    );
  }

  Widget buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        widget.coffee.image,
        width: double.infinity,
        height: 202,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildMainInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.coffee.name,
          style: const TextStyle(
            color: Color(0xff242424),
            fontFamily: "Sora",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.coffee.name,
                  style: const TextStyle(
                    color: Color(0xff242424),
                    fontFamily: "Sora",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      widget.coffee.name,
                      style: const TextStyle(
                        color: Color(0xff242424),
                        fontFamily: "Sora",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                "assets/icons/bike.png",
                "assets/icons/bean.png",
                "assets/icons/milk.png"
              ].map((e) {
                return Container(
                  decoration: const BoxDecoration(),
                );
              }).toList(),
            )
          ],
        ),
      ],
    );
  }
}
