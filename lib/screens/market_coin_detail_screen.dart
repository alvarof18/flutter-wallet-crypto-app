import 'package:flutter/material.dart';

class MarketCoinDetailScreen extends StatelessWidget {
  const MarketCoinDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F6),
      //Para esta primera version el padding para el leading sera el utilizado por defecto,
      //En la proxima version hare el cambio para agregar el padding
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 50,
        toolbarHeight: 80,
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.white.withOpacity(0.8)),
          child: IconButton(
              onPressed: () {}, icon: Image.asset('assets/back_icon.png')),
        ),
        //actions: [Text('Action 1'), Text('Action 2')],
        title: const Text(
          'Etherium (ETH)',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff191C32)),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {}, icon: Image.asset('assets/dots_icon.png')),
          )
        ],
      ),

      body: Column(
        children: [
          _priceAndPorcentage(),
          const SizedBox(height: 30),
          _coinOptions(),
          const Image(image: AssetImage('assets/graphics.png')),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _ButtonsBuyAndAlert(
                textButton: 'Set Alert',
                isPrimary: true,
              ),
              _ButtonsBuyAndAlert(
                textButton: 'Buy Now',
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(child: _footerDetails())
        ],
      ),
    );
  }
}

class _footerDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Market Statistic',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff191C32)),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Market capitalization',
                  style: TextStyle(
                      color: Color(0xff9395A4),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$231,233',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff191C32)),
                )
              ]),
          const SizedBox(
            height: 25,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Circulating Suply',
                  style: TextStyle(
                      color: Color(0xff9395A4),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$114,211 ETH',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff191C32)),
                )
              ])
        ],
      ),
    );
  }
}

class _ButtonsBuyAndAlert extends StatelessWidget {
  const _ButtonsBuyAndAlert(
      {super.key, required this.textButton, this.isPrimary = false});
  final String textButton;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Click Boton');
      },
      child: Container(
        alignment: Alignment.center,
        width: 155,
        height: 55,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  offset: const Offset(2, 5),
                  color: Colors.black.withOpacity(0.1))
            ],
            color:
                isPrimary ? const Color(0xffFAFBFB) : const Color(0xff191C32),
            borderRadius: BorderRadius.circular(40)),
        child: Text(
          textButton,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: isPrimary
                  ? const Color(0xff767DFF)
                  : const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}

class _coinOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
          color: const Color(0xffEBEFF1),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          _itemMenuCoin(
            text: '24H',
            selectItem: true,
          ),
          _itemMenuCoin(
            text: '1W',
          ),
          _itemMenuCoin(
            text: '1Y',
          ),
          _itemMenuCoin(
            text: 'ALL',
          ),
          _itemMenuCoin(
            text: 'Point',
          )
        ],
      ),
    );
  }
}

class _itemMenuCoin extends StatelessWidget {
  final String text;
  final bool selectItem;

  const _itemMenuCoin({super.key, required this.text, this.selectItem = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 60,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: (selectItem) ? Colors.white : Colors.transparent),
      child: Text(text,
          style: (selectItem)
              ? const TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xff191C32))
              : const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9395A5))),
    );
  }
}

class _priceAndPorcentage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '32128.80',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/chevron_up_green.png'),
            const SizedBox(width: 5),
            const Text(
              '\$2.25%',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9395A4)),
            )
          ],
        ),
      ],
    );
  }
}
