import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 30,
                ),
              ),
              SizedBox(
                // width: 310,
                height: 40,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    labelText: 'Search Your Movies Here!',
                    labelStyle: const TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchbarRow extends StatelessWidget {
  const SearchbarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: 25,
          child: Image.asset('assets/user-logo.png'),
        ),
      ],
    );
  }
}
