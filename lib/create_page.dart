import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(), //AppBar
      body: _buildBody(),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      actions: const [
        IconButton(
            onPressed: null,
            icon: Icon(Icons.send)),
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        const Text('No Image', ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(hintText: '내용을 입력 하세요'),
            controller: textEditingController,
          ),
        )
      ],
    );
  }
}
