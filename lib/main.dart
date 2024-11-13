import 'package:flutter/material.dart';
import 'package:test_app/calculate.dart';
import 'package:test_app/what_if.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  ThemeData appTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xff121212),
      fontFamily: 'montserrat',
      useMaterial3: true,
      textTheme: const TextTheme(
        bodySmall: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        bodyLarge: TextStyle(color: Colors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: const Color(0xff121212).withOpacity(0.6)),
        suffixStyle: const TextStyle(color: Color(0xff121212)),
        labelStyle: const TextStyle(color: Color(0xff121212)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: MaterialApp(theme: appTheme(), home: MainPage()));
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 48,
                ),
                const Text(
                  'Cryptocurrency',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    'assets/ic_settings.png',
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            ),
            for (int i in [0, 1])
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 16, 8, 8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: const Color(0xff212121),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          i == 0 ? 'assets/ic_btc.png' : 'assets/ic_eth.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              i == 0 ? 'Bitcoin' : 'Ethereum',
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text(
                              i == 0 ? '(BTC)' : '(ETH)',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.6)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.fromLTRB(8, 16, 0, 8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: const Color(0xff212121),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          i == 0 ? 'assets/ic_bnb.png' : 'assets/ic_sol.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              i == 0 ? 'BNB' : 'Solana',
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text(
                              i == 0 ? '(BNB)' : '(SOL)',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.6)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => WhatIfPage()));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xff212121),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What if?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                        'Find out how much you could have earned by investing in cryptocurrency sooner'),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/ic_income.png',
                        width: 24,
                        height: 24,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => CalculatePage()));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xff212121),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Calculator',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                        "Calculate how much money you'll get if your cryptocurrency grows"),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/ic_calculate.png',
                        width: 24,
                        height: 24,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
