import 'package:fitness/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories(); // get categories from CategoryModel
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          const SizedBox(height: 25), // Divider
          _categoriesSection()
        ],
      ),
    );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15), // Divider
        SizedBox(
          height: 100,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: 80,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(categories[index].iconPath),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Container _searchField() {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.1),
            blurRadius: 20,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(10),
          hintText: 'Search Pancake',
          hintStyle: const TextStyle(
            color: Color(0xFFDDDADA),
            fontSize: 12,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
          suffixIcon: SizedBox(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 0.1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset('assets/icons/Filter.svg'),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 50,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: 35,
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xffF7F8F8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0.0,
                ),
                alignment: Alignment.center,
                icon: SvgPicture.asset(
                  'assets/icons/Arrow - Left 2.svg',
                  width: 15,
                ),
                // icon: const Icon(Icons.arrow_back_ios_new),
                // iconSize: 25,
              ),
            ),
            const Text(
              'Breakfast',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox.square(
              dimension: 35,
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xffF7F8F8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0.0,
                ),
                alignment: Alignment.center,
                icon: SvgPicture.asset(
                  'assets/icons/dots.svg',
                  width: 10,
                ),
                // icon: const Icon(Icons.arrow_back_ios_new),
                // iconSize: 25,
              ),
            ),
          ],
        ),
      ),
      // leading: Container(
      //   margin: const EdgeInsets.all(10),
      //   width: 37,
      //   child: IconButton(
      //     onPressed: () {},
      //     style: IconButton.styleFrom(
      //       backgroundColor: const Color(0xffF7F8F8),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       elevation: 0.0,
      //     ),
      //     //icon: const Icon(Icons.arrow_back_ios_new),
      //     icon: SvgPicture.asset(
      //       'assets/icons/Arrow - Left 2.svg',
      //       width: 20,
      //     ),
      //     //iconSize: 25,
      //   ),
      // ),
      // actions: [
      //   Container(
      //     margin: const EdgeInsets.all(10),
      //     width: 37,
      //     child: IconButton(
      //       onPressed: () {},
      //       style: IconButton.styleFrom(
      //         backgroundColor: const Color(0xffF7F8F8),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(10.0),
      //         ),
      //         elevation: 0.0,
      //       ),
      //       //icon: const Icon(Icons.more_horiz_rounded),
      //       icon: SvgPicture.asset(
      //         'assets/icons/dots.svg',
      //         width: 10,
      //       ),
      //       //iconSize: 18,
      //     ),
      //   ),
      // ],
    );
  }
}
