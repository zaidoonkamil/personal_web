import 'package:flutter/material.dart';
import 'package:flutter_app/constant.dart';
import 'package:flutter_app/widget.dart';

class Desktop extends StatelessWidget {
   Desktop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
      body: Padding(
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
                    MediaQuery.of(context).size.width*0.02
                      ),
                ),
                Text(
                  'KAMIL',
                  style: TextStyle(
                    color: PrimaryColor,
                    fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width*0.02
                  ),
                ),
                Spacer(),
                Booton(link:'https://api.whatsapp.com/send?phone=+9647712442505&text=Hello', text: 'Whatsapp', color: Colors.green,),
                Booton(link:'https://github.com/zaidoonkamil?tab=repositories', text: 'Project', color: Colors.blue,),
              ],
            ),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hello, My Name Is',
                          style: TextStyle(
                              color: WhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              MediaQuery.of(context).size.height*0.04
                          ),
                        ),
                        Row(
                        children: [
                        Text(
                          'Zaidoon',
                          style: TextStyle(
                              color: WhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              MediaQuery.of(context).size.width*0.06
                          ),
                        ),
                        Text(
                          ' Kamil',
                          style: TextStyle(
                              color: PrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              MediaQuery.of(context).size.width*0.06
                          ),
                        ),
                      ],),
                        Row(
                          children: [
                            Text(
                              'I\'m a',
                              style: TextStyle(
                                  color: WhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.height*0.04
                              ),
                            ),
                            Text(
                              ' Mobile Application With Flutter ',
                              style: TextStyle(
                                  color: PrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.height*0.04
                              ),
                            ),
                            Text(
                              'Developer',
                              style: TextStyle(
                                  color: WhiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.height*0.04
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                        Booton(link: '', text: 'Show CV', color: PrimaryColor,),
                        SizedBox(height: MediaQuery.of(context).size.height*0.05),
                        Row(
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
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  height: MediaQuery.of(context).size.height*0.8,
                  alignment: Alignment.center,
                  child:CircleAvatar(
                      radius: (150),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(200),
                        child: Image.asset('assets/image/photo_2022-09-09_03-54-47.jpg',fit:BoxFit.fill ,width: 330,height: 330,),

                      )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
