import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  XFile? _image;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => _getImage(),
        child: const Icon(Icons.add_a_photo),
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
    return SingleChildScrollView(
      child: Column(
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
      ),
    );
  }

  Future _getImage() async {
    print('클릭되나');
    // Pick an image
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = image;
      });
    }else {
      Text('사진을 선택해 주세요.');
    }
  }
}
