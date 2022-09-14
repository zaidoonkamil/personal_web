import 'package:flutter/material.dart';

import 'constant.dart';
import 'widget.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BlackColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40,right: 30,top: 30,bottom: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'ZAIDOON.',
                      style: TextStyle(
                          color: WhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context).size.width*0.03
                      ),
                    ),
                    Text(
                      'KAMIL',
                      style: TextStyle(
                          color: PrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width*0.03
                      ),
                    ),
                    Spacer(),
                    Booton(link:'https://api.whatsapp.com/send?phone=+9647712442505&text=Hello', text: 'Whatsapp', color: Colors.green,),
                    Booton(link:'https://github.com/zaidoonkamil?tab=repositories', text: 'Project', color: Colors.blue,),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.09,
                ),
                Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        height: MediaQuery.of(context).size.height*0.7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hello, My Name Is',
                                  style: TextStyle(
                                      color: WhiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.width*0.03
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Zaidoon',
                                  style: TextStyle(
                                      color: WhiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.width*0.09
                                  ),
                                ),
                                Text(
                                  ' Kamil',
                                  style: TextStyle(
                                      color: PrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.width*0.09
                                  ),
                                ),
                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'I\'m a',
                                  style: TextStyle(
                                      color: WhiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.width*0.03
                                  ),
                                ),
                                Text(
                                  ' Mobile Application With Flutter ',
                                  style: TextStyle(
                                      color: PrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.width*0.03
                                  ),
                                ),
                                Text(
                                  'Developer',
                                  style: TextStyle(
                                      color: WhiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.width*0.03
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                            Booton(link: 'https://drive.google.com/file/d/1W7Q67OJHEQQEp-7ablR_v3f8S1b98hO-/view', text: 'Show CV', color: PrimaryColor,),
                            SizedBox(height: MediaQuery.of(context).size.height*0.07),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                iconButton(
                                    link: 'https://www.instagram.com/zaidoun_kamil/',
                                    image: 'assets/image/1491580635-yumminkysocialmedia26_83102.png'
                                ),iconButton(
                                    link: 'https://www.facebook.com/profile.php?id=100009966999469',
                                    image: 'assets/image/facebook_icon-icons.com_59205.png'
                                ),iconButton(
                                    link: 'https://github.com/zaidoonkamil',
                                    image: 'assets/image/github_logo_icon_147285.png'
                                ),iconButton(
                                    link: '',
                                    image: 'assets/image/linkedin_icon-icons.com_65929.png'
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  height: MediaQuery.of(context).size.height*0.8,
                  alignment: Alignment.center,
                  child:CircleAvatar(
                      radius: (150),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(200),
                        child: Image.asset('assets/image/photo_2022-09-09_03-54-47.jpg',fit:BoxFit.fill ),

                      )
                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
