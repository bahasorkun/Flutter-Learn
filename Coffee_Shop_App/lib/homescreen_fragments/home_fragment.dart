import 'package:coffee_shop_app/detail_page.dart';
import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  String categorySelected = "All Coffee";
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        Stack(
          children: [
            buildBackground(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const Gap(68),
                  buildHeader(),
                  const Gap(30),
                  buildSearch(),
                  const Gap(24),
                  buildBannerPromo(),
                ],
              ),
            )
          ],
        ),
        const Gap(24),
        buildCategories(),
        const Gap(16),
        buildGridCoffee(),
        const Gap(30),
      ],
    );
  }

  Widget buildBackground() {
    return Container(
      height: 280,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff111111),
            Color(0xff313131),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Location",
          style: TextStyle(
            fontFamily: "Sora",
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xffA2A2A2),
          ),
          textAlign: TextAlign.center,
        ),
        const Gap(8),
        Row(
          children: [
            const Text(
              "Bilzen, Tanjungbalai",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Sora",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xffD8D8D8),
              ),
            ),
            const Gap(4),
            Image.asset(
              "assets/icons/arrow_down.png",
              height: 14,
              width: 14,
              color: const Color(0xffD8D8D8),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff2A2A2A)),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Image.asset("assets/icons/search.png"),
                const Gap(8),
                const Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Sora",
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        isDense: true,
                        border: InputBorder.none,
                        hintText: "Search Coffee",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Sora",
                          color: Color(0xffA2A2A2),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Gap(16),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffC67C4E),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          height: 52,
          width: 52,
          child: const ImageIcon(
            AssetImage("assets/icons/Filter.png"),
            size: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget buildBannerPromo() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        "assets/icons/Banner.png",
        width: double.infinity,
        height: 140,
      ),
    );
  }

  Widget buildCategories() {
    final categories = [
      "All Coffee",
      "Macchiato",
      "Latte",
      "Americano",
    ];
    return SizedBox(
      height: 29,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          String category = categories[index];
          bool isActive = categorySelected == category;
          return GestureDetector(
            onTap: () {
              categorySelected = category;
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.only(
                left: index == 0 ? 24 : 8,
                right: index == categories.length - 1 ? 24 : 8,
              ),
              decoration: BoxDecoration(
                color: isActive
                    ? const Color(0xffC67C4E)
                    : const Color(0xffEDEDED).withOpacity(0.35),
                borderRadius: BorderRadius.circular(6),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              child: Text(
                category,
                style: TextStyle(
                  fontFamily: "Sora",
                  fontSize: 14,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                  color: isActive ? Colors.white : const Color(0xff313131),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildGridCoffee() {
    return GridView.builder(
      itemCount: listGridCoffee.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 238,
        crossAxisSpacing: 15,
        mainAxisSpacing: 24,
      ),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        Coffee coffee = listGridCoffee[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(coffee: coffee),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        coffee.image,
                        height: 128,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              const Color(0xff111111).withOpacity(0.3),
                              const Color(0xff313131).withOpacity(0.3),
                            ],
                          ),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(24),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/icons/star.png",
                              height: 12,
                              width: 12,
                            ),
                            const Gap(4),
                            Text(
                              "${coffee.rate}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: "Sora",
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(8),
                Text(
                  coffee.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: "Sora",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff242424),
                  ),
                ),
                const Gap(4),
                Text(
                  coffee.type,
                  style: const TextStyle(
                    fontFamily: "Sora",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA2A2A2),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      NumberFormat.currency(
                        decimalDigits: 2,
                        locale: "en_US",
                        symbol: "\$ ",
                      ).format(coffee.price),
                      style: const TextStyle(
                        fontFamily: "Sora",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff050505),
                      ),
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xffC67C4E),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
