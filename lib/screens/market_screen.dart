import 'package:flutter/material.dart';
import 'package:robot_wallet_app/widgets/widgets.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xffF3F5F6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Market',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xff26273C)),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          _searchBar(),
          const SizedBox(
            height: 50,
          ),
          _topButtom(),
          const SizedBox(height: 30),
          Expanded(child: SingleChildScrollView(child: _listCoinMarket()))
        ],
      ),
    );
  }
}

class _listCoinMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ItemMarket(
            colorIcon: Color(0xffE7E5FD),
            nameIcon: 'Vechain',
            urlIcon: 'assets/vechain_icon.png',
            percentage: 2.1,
            amount: 14112.86,
            amountMCap: 893.43),
        SizedBox(height: 30),
        ItemMarket(
          colorIcon: Color(0xffFFE4C3),
          nameIcon: 'Bitcoin',
          percentage: 2.5,
          amount: 32128.80,
          amountMCap: 893.43,
          urlIcon: 'assets/Bitcoin.png',
        ),
        SizedBox(height: 30),
        ItemMarket(
          colorIcon: Color(0xffE0E2FF),
          nameIcon: 'Achain',
          percentage: 2.2,
          amount: 28312.22,
          amountMCap: 893.43,
          urlIcon: 'assets/achain_icon.png',
        ),
        SizedBox(height: 30),
        ItemMarket(
          colorIcon: Color(0xffFFE4EF),
          nameIcon: 'Bytecoin',
          percentage: 2.2,
          amount: 15313.81,
          amountMCap: 893.43,
          urlIcon: 'assets/bytecoin_icon.png',
        ),
        SizedBox(height: 30),
        ItemMarket(
          colorIcon: Color(0xffCAEDCB),
          nameIcon: 'Vitae',
          percentage: 2.1,
          amount: 14112.86,
          amountMCap: 893.43,
          urlIcon: 'assets/vitae_icon.png',
        ),
        //SizedBox(height: 30),
        // ItemMarket(
        //   colorIcon: Color(0xffCAEDCB),
        //   nameIcon: 'Vitae',
        //   percentage: 2.1,
        //   amount: 14112.86,
        //   amountMCap: 893.43,
        //   urlIcon: 'assets/vitae_icon.png',
        // ),
        // SizedBox(height: 30),
        // ItemMarket(
        //   colorIcon: Color(0xffCAEDCB),
        //   nameIcon: 'Vitae',
        //   percentage: 2.1,
        //   amount: 14112.86,
        //   amountMCap: 893.43,
        //   urlIcon: 'assets/vitae_icon.png',
        // )
      ],
    );
  }
}

class _topButtom extends StatelessWidget {
  const _topButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        IconMarkets(
          title: 'Watchlist',
          urlIcon: 'assets/watchlist_icon.png',
          circleColor: Color(0xffDEF5E9),
        ),
        IconMarkets(
          title: 'Trending',
          urlIcon: 'assets/treading_icon.png',
          circleColor: Color(0xffDFF0FF),
        ),
        IconMarkets(
          title: 'Best Value',
          urlIcon: 'assets/best_value_icon.png',
          circleColor: Color(0xffFFEBE4),
        )
      ],
    );
  }
}

class _searchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
      child: const ListTile(
        leading: Image(image: AssetImage('assets/lens_icon.png')),
        title: Text(
          'Search',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff9395A4)),
        ),
        trailing: Image(image: AssetImage('assets/search_icon.png')),
      ),
    );
  }
}
