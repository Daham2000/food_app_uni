import 'package:flutter/material.dart';
import '../../util/tab_util.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

enum PayOptions { cash, creditDebitCard, bankPayment }

class _PaymentViewState extends State<PaymentView> {
  PayOptions valuePay = PayOptions.cash;

  TextEditingController cardNum = TextEditingController();
  TextEditingController expDate = TextEditingController();
  TextEditingController cvv = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: TabUtil.horizontalPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Radio(
                value: PayOptions.cash,
                groupValue: valuePay,
                onChanged: (PayOptions? value) {
                  setState(() {
                    valuePay = value ?? PayOptions.cash;
                  });
                },
              ),
              const Text('Cash'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: PayOptions.creditDebitCard,
                groupValue: valuePay,
                onChanged: (PayOptions? value) {
                  setState(() {
                    valuePay = value ?? PayOptions.creditDebitCard;
                  });
                },
              ),
              const Text('Credit/Debit Card'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Card number"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: TextField(
                        controller: cardNum,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '#### #### ####',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Exp. Data"),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: Container(
                                width: 100,
                                child: TextField(
                                  controller: expDate,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'MM/YY',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("CVV"),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: Container(
                                width: 100,
                                child: TextField(
                                  controller: cvv,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: '###',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Radio(
                value: PayOptions.bankPayment,
                groupValue: valuePay,
                onChanged: (PayOptions? value) {
                  setState(() {
                    valuePay = value ?? PayOptions.bankPayment;
                  });
                },
              ),
              const Text('Bank Payment'),
            ],
          ),
        ],
      ),
    );
  }
}
