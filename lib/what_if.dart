import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:test_app/local_data.dart';
import 'package:test_app/widget/custom_text_field.dart';

class WhatIfPage extends StatefulWidget {
  const WhatIfPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WhatIfPageState();
  }
}

class _WhatIfPageState extends State<WhatIfPage> {
  int selectedCrypto = -1;
  String selectedMonth = 'January';
  String selectedYear = '2024';
  TextEditingController amountCtrl = TextEditingController();
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<String> years = [
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    amountCtrl.dispose();
  }

  @override
  void initState() {
    super.initState();
    amountCtrl.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        size: 24,
                        color: Colors.white,
                      )),
                ),
                const Text(
                  'What if?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 48,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        const SizedBox(height: 16,),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: const Color(0xff409BFF),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            'Imagine how much money (USD) you could have earned if you had invested in cryptocurrency a few years ago',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Calculated based on October 2024 prices*',
                              style: TextStyle(
                                color: Color(0xff121212),
                                fontSize: 12,
                              ),
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'Cryptocurrency',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff121212)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCrypto = 0;
                                  selectedYear = '2024';
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.fromLTRB(12, 19, 12, 19),
                                decoration: BoxDecoration(
                                    color: selectedCrypto == 0
                                        ? const Color(0xff409BFF)
                                        : const Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Ethereum',
                                  style: TextStyle(
                                      color: selectedCrypto == 0
                                          ? Colors.white
                                          : const Color(0xff121212)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCrypto = 1;
                                  selectedYear = '2024';
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.fromLTRB(12, 19, 12, 19),
                                decoration: BoxDecoration(
                                    color: selectedCrypto == 1
                                        ? const Color(0xff409BFF)
                                        : const Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Bitcoin',
                                  style: TextStyle(
                                      color: selectedCrypto == 1
                                          ? Colors.white
                                          : const Color(0xff121212)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCrypto = 2;
                                  selectedYear = '2024';
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.fromLTRB(12, 19, 12, 19),
                                decoration: BoxDecoration(
                                    color: selectedCrypto == 2
                                        ? const Color(0xff409BFF)
                                        : const Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Solana',
                                  style: TextStyle(
                                      color: selectedCrypto == 2
                                          ? Colors.white
                                          : const Color(0xff121212)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCrypto = 3;
                                  selectedYear = '2024';
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.fromLTRB(12, 19, 12, 19),
                                decoration: BoxDecoration(
                                    color: selectedCrypto == 3
                                        ? const Color(0xff409BFF)
                                        : const Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'BNB',
                                  style: TextStyle(
                                      color: selectedCrypto == 3
                                          ? Colors.white
                                          : const Color(0xff121212)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        if (selectedCrypto != -1)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Time of investment',
                                style: TextStyle(
                                    color: Color(0xff121212), fontSize: 16),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Year',
                                    style: TextStyle(
                                        color: const Color(0xff121212)
                                            .withOpacity(0.6)),
                                  )),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: Text('Month',
                                          style: TextStyle(
                                              color: const Color(0xff121212)
                                                  .withOpacity(0.6)))),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Container(
                                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF5F5F5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: DropdownButton2(
                                      isExpanded: true,

                                      // Use selectedYear when showing the current selection, otherwise set to null
                                      // value: selectedYear,
                                      hint: Text(
                                          selectedYear), // Display the selected year as a hint
                                      items: years
                                          .where((y) => y != selectedYear)
                                          .where((y) => selectedCrypto == 2
                                              ? y == '2022' ||
                                                  y == '2023' ||
                                                  y == '2024'
                                              : true)
                                          .where((y) => selectedCrypto == 3
                                              ? y == '2023' || y == '2024'
                                              : true)
                                          .map((year) {
                                        return DropdownMenuItem(
                                          value: year,
                                          child: Text(year),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedMonth = 'January';
                                          selectedYear = value!;
                                        });
                                      },
                                      dropdownStyleData: DropdownStyleData(
                                        maxHeight: 140,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        offset: const Offset(-10, 0),
                                        scrollbarTheme: ScrollbarThemeData(
                                          radius: const Radius.circular(10),
                                          thickness:
                                              MaterialStateProperty.all(3),
                                          thumbVisibility:
                                              MaterialStateProperty.all(true),
                                          trackVisibility:
                                              const WidgetStatePropertyAll(true),
                                          trackColor: const WidgetStatePropertyAll(
                                              Color(0xffC7C7C7)),

                                          // crossAxisMargin: 12,
                                          mainAxisMargin: 12,
                                          thumbColor: const WidgetStatePropertyAll(
                                              Color(0xff121212)),
                                        ),
                                      ),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: Container(
                                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF5F5F5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: DropdownButton2(
                                      isExpanded: true,
                                      value: selectedMonth,
                                      items: selectedYear == '2024'
                                          ? [
                                              ...months.take(9).map((mnth) {
                                                return DropdownMenuItem(
                                                    value: mnth,
                                                    child: Text(mnth));
                                              })
                                            ]
                                          : [
                                              ...months.map((mnth) {
                                                return DropdownMenuItem(
                                                    value: mnth,
                                                    child: Text(mnth));
                                              })
                                            ],
                                      onChanged: (value) {
                                        setState(() {
                                          selectedMonth = value!;
                                        });
                                      },
                                      dropdownStyleData: DropdownStyleData(
                                        maxHeight: 140,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        offset: const Offset(-10, 0),
                                        scrollbarTheme: ScrollbarThemeData(
                                          radius: const Radius.circular(10),
                                          thickness:
                                              MaterialStateProperty.all(3),
                                          thumbVisibility:
                                              MaterialStateProperty.all(true),
                                          trackVisibility:
                                              const WidgetStatePropertyAll(true),
                                          trackColor: const WidgetStatePropertyAll(
                                              Color(0xffC7C7C7)),

                                          // crossAxisMargin: 12,
                                          mainAxisMargin: 12,
                                          thumbColor: const WidgetStatePropertyAll(
                                              Color(0xff121212)),
                                        ),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              const Text(
                                'Investment amount',
                                style: TextStyle(
                                    color: Color(0xff121212), fontSize: 16),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF5F5F5),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: CustomTextField(
                                      hint: '300\$',
                                      suffix: '\$',
                                      controller: amountCtrl))
                            ],
                          )
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        if (validFields()) {
                          showDialog(
                              context: context,
                              builder: (c) {
                                return Dialog(
                                  backgroundColor: const Color(
                                      0xff409BFF), // Custom background color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        40), // Rounded corners
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12, 8, 12, 24),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(c);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.fromLTRB(
                                                  8, 8, 8, 0),
                                              color: Colors.transparent,
                                              child: const Icon(
                                                Icons.close,
                                                color: Colors.white,
                                                size: 26,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '${calculate()}\$',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 32),
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          'You would have earned',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(18),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: validFields()
                                ? const Color(0xff409BFF)
                                : const Color(0xff9FCDFF),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text('Calculate'),
                      ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  int calculate() {
    Map<String, Map<String, double>> selectCrypto = selectedCrypto == 0
        ? ethereumPrices
        : selectedCrypto == 1
            ? bitcoinPrices
            : selectedCrypto == 2
                ? solanaPrices
                : bnbPrices;
    double investmentPrice = selectCrypto[selectedYear]?[selectedMonth] ?? 0;
    double unitsBought =
        int.parse(amountCtrl.text.replaceAll('\$', '')) / investmentPrice;
    double currentPrice = selectCrypto['2024']?['October'] ?? 0;
    double currentInvestmentValue = unitsBought * currentPrice;
    return currentInvestmentValue.toInt();
  }

  bool validFields() {
    return selectedCrypto != -1 && amountCtrl.text.length > 1;
  }
}
