import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(), //AppBar
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.exit_to_app),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  const SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRthC7Yn3CBF523_kmKU1erebQlGhxO5NTrkQ&usqp=CAU'),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        SizedBox(
                          width: 28.0,
                          height: 28.0,
                          child: FloatingActionButton(
                            onPressed: null,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: FloatingActionButton(
                            onPressed: null,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    )
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              const Text(
                '이름',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              )
            ],
          ),
          const Text(
            '0\n게시물',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          const Text(
            '0\n팔로워',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          const Text(
            '0\n팔로잉',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
