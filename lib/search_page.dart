import 'package:flutter/material.dart';
import 'package:instagram_clone/create_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ), //AppBar
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CreatePage()));
        },
        child: const Icon(Icons.create),
      ),
    );
  }

  _buildBody() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
      return _buildListItem(context);
    },);
  }

  _buildListItem(BuildContext context) {
    return Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMUHs3Cyuu-coA9ywzpIrGrVmIpUYc1sCkmA&usqp=CAU',
      fit: BoxFit.cover,);
  }
}
 