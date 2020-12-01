import 'package:app/Widgets/profile.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: dscteam(),
  ));
}

class dscteam extends StatefulWidget {
  @override
  _dscteamState createState() => _dscteamState();
}

class _dscteamState extends State<dscteam> {

  List<String> avatarUrl = ["https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","https://i.pinimg.com/236x/66/e4/1f/66e41f4092d56d6aa19ad41a7ba9de2e.jpg","https://static.photocdn.pt/images/articles/2019/08/07/images/articles/2019/07/31/best_linkedin_photos.jpg","https://miro.medium.com/max/1200/0*OD29YviapogfjXGP.jpg","https://4.bp.blogspot.com/-iD8phi4w2NE/W40uR3EAl5I/AAAAAAAAeFk/IZe9mXo5whUn39DdNvgLrXu_Y6PeDoibwCLcBGAs/s1600/1%2BDSC_2069c.jpg","https://alexknightstudio.com/wp-content/uploads/2019/09/ASP6380.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu75QWMGLKgL0RuJCv7hc9sutGK5PijMTfboZtDdHwzT_vpef2sovzVvJENGcNRY-HJsHDaIITDEeY4Drtst1RnH2Grv_UGjs&usqp=CAU&ec=45732304","https://i1.wp.com/nycphoto.com/app/uploads/LinkedIn-Headshot-325.jpg?w=1140","https://i.dailymail.co.uk/i/pix/2017/04/20/13/3F6B966D00000578-4428630-image-m-80_1492690622006.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-oaKBwYEu2z_CfgD0o8YEVMNW4IeUUm_DXOnSNf4e4thqPB5f4URclXBNWygAOu0PqEJxJxhT1fVx_znHXTb8DIx2DqUQNo&usqp=CAU&ec=45732304"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Color(0xff4285F4),
        title: Text("DSC Team",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24.0),),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:80.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    teamProfile(avatarUrl[0], "DSC Lead", Color(0xff3EB654),"Ahmed Ashfaq"),
                    teamProfile(avatarUrl[1], "Development", Color(0xffFBBC04),"Zuhad Zahid")
                  ],
                ),
                SizedBox(height:40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    teamProfile(avatarUrl[2], "DSC Lead", Color(0xffFBBC04),"Farooq"),
                    teamProfile(avatarUrl[3], "Development", Color(0xffEA4335),"Bilal")
                  ],
                ),
                SizedBox(height:40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    teamProfile(avatarUrl[4], "Content Writer", Color(0xff3EB654),"Hasan"),
                    teamProfile(avatarUrl[5], "Development", Color(0xffFBBC04),"Ali Mirza")
                  ],
                ),
                SizedBox(height:40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    teamProfile(avatarUrl[6], "Freelancer", Color(0xffEA4335),"Muhammad Saad"),
                    teamProfile(avatarUrl[7], "Content Writer", Color(0xff3EB654),"Bilal Rehman")
                  ],
                ),
                SizedBox(height:40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    teamProfile(avatarUrl[8], "Content Writer", Color(0xffFBBC04),"Ammaz Rafi"),
                    teamProfile(avatarUrl[9], "Development", Color(0xffEA4335),"Naeem Raza")
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}