import 'package:flutter/material.dart';
import 'package:robot_wallet_app/widgets/custom_card.dart';
import 'package:robot_wallet_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xffF3F5F6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Home',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xff191C32)),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PromoHead(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: const Text(
              'Price Alerts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const CustomCard(
            text: 'BTCUSDT just went above 30123.232',
            assetsUrl: 'assets/Bitcoin.png',
            expanded: true,
          ),
          const SizedBox(height: 15),

          //TODO: El stack de card no debe ser expandible pero si clickleable
          const CustomCard(
            text: 'BTCUSDT just went above 30123.232',
            assetsUrl: 'assets/Bitcoin.png',
          ),
          Expanded(child: _tradingPart())
        ],
      ),
      bottomNavigationBar: _bottomNavigatorBar(),
    );
  }
}

class _tradingPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 45),
      padding: const EdgeInsets.only(left: 25, top: 25),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white.withOpacity(0.8)),
      child: const Text(
        'Trending',
        style: TextStyle(
            color: Color(0xff26273C),
            fontSize: 25,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

class _bottomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: const Color(0xff26273C),
            unselectedItemColor: const Color(0xffCED0DE),
            elevation: 0,
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: ImageIcon(
                    AssetImage("assets/home_icon.png"),
                  )),
              BottomNavigationBarItem(
                  label: 'Market',
                  icon: ImageIcon(
                    AssetImage("assets/market_icon.png"),
                  )),
              BottomNavigationBarItem(
                  label: 'Wallet',
                  icon: ImageIcon(
                    AssetImage("assets/wallet_icon.png"),
                  )),
              BottomNavigationBarItem(
                  label: 'Insights',
                  icon: ImageIcon(
                    AssetImage("assets/insights_icon.png"),
                  )),
              BottomNavigationBarItem(
                  label: 'Account',
                  icon: ImageIcon(
                    AssetImage("assets/account_icon.png"),
                  ))
            ],
            onTap: (value) {
//TODO: Agregar logica
            }),
      ),
    );
  }
}
