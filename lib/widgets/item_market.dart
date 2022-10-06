import 'package:flutter/material.dart';

class ItemMarket extends StatelessWidget {
  final Color colorIcon;
  final String nameIcon;
  final double percentage;
  final double amount;
  final double amountMCap;
  final String urlIcon;

  const ItemMarket(
      {super.key,
      required this.colorIcon,
      required this.nameIcon,
      required this.percentage,
      required this.amount,
      required this.amountMCap,
      required this.urlIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(color: colorIcon, shape: BoxShape.circle),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: Image.asset(urlIcon)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameIcon,
                style: const TextStyle(
                    color: Color(0xff26273C),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              //Hacer esta parte reutilizable
              Row(
                children: [
                  Image.asset('assets/chevron_up_green.png'),
                  const SizedBox(width: 5),
                  Text(
                    '\$${percentage.toString()}%',
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9395A4)),
                  )
                ],
              ),

              //Fin de parte reutilizable
            ],
          ),
          Image.asset('assets/char_down_icon.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$ ${amount.toString()}',
                style: const TextStyle(
                    color: Color(0xff26273C),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'MCap \$${amountMCap.toString()} Bn',
                style: const TextStyle(
                    color: Color(0xff9395A4),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
