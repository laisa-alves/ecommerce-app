import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Stack(
                children: [
                  Container(
                    color: Colors.pink[50],
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFFF3F3F3),
                          ),
                          child: Image.asset(
                            'images/products/smart_tv.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Título de teste teste teste teste teste teste teste teste teste teste teste',
                          style: TextStyle(fontSize: 14),
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Icon(
                                Icons.star,
                                size: 14,
                              )
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'R\$ 1.000,00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(kSecondaryButton),
                          ),
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                          )),
                    ),
                  ),
                ],
              );
            },
            childCount: 8,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: (MediaQuery.of(context).size.width - 32) / 2,
            mainAxisExtent: 258,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          )),
    );
  }
}
