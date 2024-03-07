import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:juliodejuls/exporT.dart';

class AboutThem extends StatelessWidget {
  const AboutThem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        //(0xfff6b4a0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: JulioPath(),
                child: Container(
                  height: 260,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // gradient: LinearGradient(
                    //   colors: [Colors.deepPurpleAccent, Colors.lightBlueAccent],
                    // ),
                  ),
                  child: ClipRRect(
                    child: Image(
                        image: AssetImage(nms[0].imgurl), fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 150,
                child: Text(
                  'For President',
                  style: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.none,
                      color: Colors.redAccent),
                ),
              ),
            ],
          ),
          Text(
            nms[0].name,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 37,
              letterSpacing: 4,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 270,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xffead4d3),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade700,
                  blurRadius: 1,
                  offset: Offset(4, 4),
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 1,
                  offset: Offset(-4, -4),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Text(
              " D.O.B:01\01\90\n Location: Banda,KYU\n Education:BaScCS,KYU,MBAm,\n ABC2,2018-2020\n Career: Software Engineer\n PM at ABC Inc\n Acht's:Developed popular\n mobile application\n Hobbies:Playing guitar\n Traveling, Reading science\n fiction novels",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.none,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 280,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.symmetric(vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterSocialButton(
                  onTap: () {},
                  mini: true,
                  buttonType: ButtonType.twitter,
                ),
                FlutterSocialButton(
                  onTap: () {},
                  mini: true,
                  buttonType: ButtonType.whatsapp,
                ),
                FlutterSocialButton(
                  onTap: () {},
                  mini: true,
                  buttonType: ButtonType.email,
                ),
                FlutterSocialButton(
                  onTap: () {},
                  mini: true,
                  buttonType: ButtonType.facebook,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class JulioPath extends CustomClipper<Path> {
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final _path = Path();

    _path.lineTo(0, h * .7);

    _path.quadraticBezierTo(
      w / 4,
      h,
      w / 2,
      h * .8,
    );
    _path.quadraticBezierTo(
      w / 0.85,
      h * .42,
      w,
      h * .8,
    );
    _path.lineTo(w, 0);
    _path.close();
    return _path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class MyChart2 extends StatelessWidget {
//   const MyChart2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PieChart(PieChartData(sections: [
//       PieChartSectionData(
//         value: 5,
//         title: 'yes',
//       )
//     ]));
//   }
// }
