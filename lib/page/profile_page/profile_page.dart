import 'package:FoodApp/util/color_util.dart';
import 'package:FoodApp/util/image_util.dart';
import 'package:FoodApp/util/text_util.dart';
import 'package:FoodApp/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_page/home_bloc.dart';
import '../home_page/home_state.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Text ctrl list
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController phoneNumCtrl = TextEditingController();
  final TextEditingController birthDayCtrl = TextEditingController();

  // generate account info row
  Widget getAccountRow(
      String title, TextEditingController ctrl, IconData icon) {
    return (Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 200,
            child: TextField(
              controller: ctrl,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: title,
              ),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (pre, current) => pre.error != current.error,
        builder: (ctx, state) {
          return ListView(
            children: [
              SizedBox(
                height: 180,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 135,
                      child: Container(
                        color: ColorUtil.darkOrangeColor,
                      ),
                    ),
                    Positioned(
                      top: 40,
                      child: Text(
                        "Anna Avetisyan",
                        style: GoogleFonts.roboto(
                            fontSize: 22, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            ImageUtil.profileImageSample,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              getAccountRow(TextUtil.proName, nameCtrl, Icons.person),
              CustomDivider(size: 20.0),
              getAccountRow(TextUtil.proBirth, birthDayCtrl, Icons.cake),
              CustomDivider(size: 20.0),
              getAccountRow(TextUtil.proNumber, phoneNumCtrl, Icons.phone),
              CustomDivider(size: 20.0),
              getAccountRow(TextUtil.proEmail, emailCtrl, Icons.email),
              CustomDivider(size: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 95.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ColorUtil.darkOrangeColor,
                      minimumSize: Size(50, 32), //////// HERE
                      shape: StadiumBorder(),
                    ),
                    onPressed: () => {},
                    child: Text(
                      TextUtil.proButtonText,
                      style: GoogleFonts.roboto(
                        fontSize: 13.0,
                      ),
                    )),
              ),
            ],
          );
        });
  }
}
