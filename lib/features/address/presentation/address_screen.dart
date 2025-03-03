import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:provider/provider.dart';

class AddressScreen extends StatefulWidget {
  static const String routeName = '/address';
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController flatHouseController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController townCityController = TextEditingController();

  @override
  void dispose() {
    flatHouseController.dispose();
    areaController.dispose();
    pincodeController.dispose();
    townCityController.dispose();
    super.dispose();
  }

  void onApplePayResult(res) {}
  void onGooglePayResult(res) {}

  List<PaymentItem> paymentItems = [];

  @override
  Widget build(BuildContext context) {
    var address = context.watch<UserProvider>().user.address;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              if (address.isNotEmpty)
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          address,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'OR',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextfield(
                      hinttext: 'Flat, House no, Building',
                      controller: flatHouseController,
                    ),
                    CustomTextfield(
                      hinttext: 'Area,Street',
                      controller: areaController,
                    ),
                    CustomTextfield(
                      hinttext: 'Pincode',
                      controller: pincodeController,
                    ),
                    CustomTextfield(
                      hinttext: 'Town/City',
                      controller: townCityController,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              ApplePayButton(
                margin: const EdgeInsets.only(top: 15),
                height: 50,
                width: double.infinity,
                style: ApplePayButtonStyle.whiteOutline,
                type: ApplePayButtonType.buy,
                paymentConfiguration:
                    PaymentConfiguration.fromJsonString('applepay.json'),
                onPaymentResult: onApplePayResult,
                paymentItems: paymentItems,
              ),
              const SizedBox(height: 10),
              GooglePayButton(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 15),
                paymentConfiguration:
                    PaymentConfiguration.fromJsonString('gpay.json'),
                onPaymentResult: onGooglePayResult,
                paymentItems: paymentItems,
                loadingIndicator: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
