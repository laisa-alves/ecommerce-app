import 'package:dani_tech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Custom app bar - barra de pesquisa e carrinho
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
          padding: EdgeInsets.all(20),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    // width: SizeConfig.screenWidth * 0.8,
                    height: 34,
                    child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 18),
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Color(0xFFBDBDBD),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(999),
                              borderSide: BorderSide.none),
                          hintText: 'Buscar na DaniTech',
                          hintStyle: TextStyle(color: Color(0xFFBDBDBD))),
                      maxLines: 1,
                      cursorColor: kTextColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/shopping-cart-solid.svg',
                        height: 30,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
