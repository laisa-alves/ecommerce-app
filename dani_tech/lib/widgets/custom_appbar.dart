import 'package:dani_tech/constants.dart';
import 'package:dani_tech/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        scrolledUnderElevation: 1,
        flexibleSpace: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(20)),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth * 0.8,
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
                InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/shopping-cart-solid.svg',
                      height: getProportionateScreenHeight(30),
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    )

                    // Icon(
                    //   Icons.shopping_cart_outlined,
                    //   color: Colors.white,
                    //   size: getProportionateScreenWidth(24),
                    // ),
                    )
              ],
            ),
          ),
        ));
  }
}
