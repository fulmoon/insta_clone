import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ), //AppBar
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const Text('Instagram에 오신 것을 환영합니다.',
                    style: TextStyle(fontSize: 24.0),),
                  const Padding(padding: EdgeInsets.all(8.0)),
                  const Text('사진과 동영상을 보려면 팔로우하세요.',),
                  const Padding(padding: EdgeInsets.all(8.0)),
                  SizedBox(
                    width: 260.0,
                    child: Card(
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Padding(padding: EdgeInsets.all(1.0)),
                            const SizedBox(
                              width: 80.0,
                              height: 80.0,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA2IQupGK62EtaUvcyXLn0z21Haq1CL7PSUg&usqp=CAU'),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            const Text('이메일 주소', style: TextStyle(fontWeight: FontWeight.bold),),
                            const Text('이름'),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0 ,
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA2IQupGK62EtaUvcyXLn0z21Haq1CL7PSUg&usqp=CAU',
                                  fit: BoxFit.cover,),
                                ),
                                const Padding(padding: EdgeInsets.all(1.0)),
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0 ,
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA2IQupGK62EtaUvcyXLn0z21Haq1CL7PSUg&usqp=CAU',
                                    fit: BoxFit.cover,),
                                ),
                                const Padding(padding: EdgeInsets.all(1.0)),
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0 ,
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA2IQupGK62EtaUvcyXLn0z21Haq1CL7PSUg&usqp=CAU',
                                    fit: BoxFit.cover,),
                                ),
                              ],
                            ),
                            const Padding(padding: EdgeInsets.all(4.0)),
                            const Text('Facebook 친구'),
                            const Padding(padding: EdgeInsets.all(4.0)),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('팔로우'),
                            ),
                            const Padding(padding: EdgeInsets.all(4.0)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          )),
    );

  }
}
