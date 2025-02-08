import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 15),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 1),
                        ),
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 23,
                            ),
                          ),
                        ),
                        hintText: 'Search Amazon...',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.mic,
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(''),
      ),
    );
  }
}
