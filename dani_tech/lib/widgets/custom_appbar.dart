import 'package:dani_tech/constants.dart';
import 'package:dani_tech/size_config.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        scrolledUnderElevation: 1,
        flexibleSpace: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth * 0.76,
                  height: getProportionateScreenHeight(34),
                  child: TextField(
                    style:
                        TextStyle(fontSize: getProportionateScreenHeight(16)),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(18)),
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Color(0xFFBDBDBD),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none),
                        hintText: 'Buscar na DaniTech',
                        hintStyle: TextStyle(color: Color(0xFFBDBDBD))),
                    maxLines: 1,
                    cursorColor: kTextColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_outlined),
                  color: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
