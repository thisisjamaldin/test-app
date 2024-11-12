import 'package:flutter/material.dart';
import 'package:test_app/widget/custom_text_field.dart';

class CalculatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalculatePageState();
  }
}

class _CalculatePageState extends State<CalculatePage> {
  int selectedCrypto = -1;
  String selectedMonth = 'January';
  TextEditingController amountCtrl = TextEditingController();
  TextEditingController growthCtrl = TextEditingController();
  TextEditingController yearCtrl = TextEditingController();
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

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    amountCtrl.dispose();
    growthCtrl.dispose();
    yearCtrl.dispose();
  }

  @override
  void initState() {
    super.initState();
    amountCtrl.addListener(() {
      setState(() {});
    });
    growthCtrl.addListener(() {
      setState(() {});
    });
    yearCtrl.addListener(() {
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
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 24,
                        color: Colors.white,
                      )),
                ),
                const Text(
                  'Calculator',
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
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color(0xff409BFF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Calculate your profit based on the assumption of future investment growth',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Cryptocurrency',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff121212)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCrypto = 0;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.fromLTRB(12, 19, 12, 19),
                                decoration: BoxDecoration(
                                    color: selectedCrypto == 0
                                        ? Color(0xff409BFF)
                                        : Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Ethereum',
                                  style: TextStyle(
                                      color: selectedCrypto == 0
                                          ? Colors.white
                                          : Color(0xff121212)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCrypto = 1;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.fromLTRB(12, 19, 12, 19),
                                decoration: BoxDecoration(
                                    color: selectedCrypto == 1
                                        ? Color(0xff409BFF)
                                        : Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Bitcoin',
                                  style: TextStyle(
                                      color: selectedCrypto == 1
                                          ? Colors.white
                                          : Color(0xff121212)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCrypto = 2;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.fromLTRB(12, 19, 12, 19),
                                decoration: BoxDecoration(
                                    color: selectedCrypto == 2
                                        ? Color(0xff409BFF)
                                        : Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Solana',
                                  style: TextStyle(
                                      color: selectedCrypto == 2
                                          ? Colors.white
                                          : Color(0xff121212)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCrypto = 3;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.fromLTRB(12, 19, 12, 19),
                                decoration: BoxDecoration(
                                    color: selectedCrypto == 3
                                        ? Color(0xff409BFF)
                                        : Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'BNB',
                                  style: TextStyle(
                                      color: selectedCrypto == 3
                                          ? Colors.white
                                          : Color(0xff121212)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        if (selectedCrypto != -1)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Investment amount',
                                style: TextStyle(
                                    color: Color(0xff121212), fontSize: 16),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Your cryptocurrency amount',
                                    style: TextStyle(
                                        color: Color(0xff12121299)
                                            .withOpacity(0.6)),
                                  )),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: Text('Сryptocurrency growth',
                                          style: TextStyle(
                                              color: Color(0xff12121299)
                                                  .withOpacity(0.6)))),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Container(
                                          padding:
                                              EdgeInsets.fromLTRB(12, 0, 12, 0),
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: CustomTextField(
                                            hint: '300',
                                            controller: amountCtrl,
                                            suffix: '\$',
                                          ))),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: Container(
                                          padding:
                                              EdgeInsets.fromLTRB(12, 0, 12, 0),
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: CustomTextField(
                                            hint: '+10%',
                                            controller: growthCtrl,
                                            suffix: '%',
                                          ))),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                'When the crypto grows',
                                style: TextStyle(
                                    color: Color(0xff121212), fontSize: 16),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Year',
                                    style: TextStyle(
                                        color: Color(0xff12121299)
                                            .withOpacity(0.6)),
                                  )),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: Text('Month',
                                          style: TextStyle(
                                              color: Color(0xff12121299)
                                                  .withOpacity(0.6)))),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Container(
                                          padding:
                                              EdgeInsets.fromLTRB(12, 0, 12, 0),
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: CustomTextField(
                                            hint: '2024',
                                            controller: yearCtrl,
                                            suffix: '',
                                          ))),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF5F5F5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                          value: selectedMonth,
                                          items: [
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
                                          }),
                                    ),
                                  )),
                                ],
                              ),
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
                                  backgroundColor: Color(
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
                                            onTap: (){
                                              Navigator.pop(c);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                                              color: Colors.transparent,
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.white,
                                                size: 26,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '${(int.parse(amountCtrl.text.replaceAll('\$', '')) + (int.parse(amountCtrl.text.replaceAll('\$', '')) * (int.parse(growthCtrl.text.replaceAll('%', '')) / 100))).toInt()}\$',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 32),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'By September ${yearCtrl.text}, you could have if it grows',
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
                        padding: EdgeInsets.all(18),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: validFields()
                                ? Color(0xff409BFF)
                                : Color(0xff9FCDFF),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text('Calculate'),
                      ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  bool validFields() {
    return selectedCrypto != -1 &&
        amountCtrl.text.length > 1 &&
        growthCtrl.text.length > 1 &&
        yearCtrl.text.length == 4;
  }
}