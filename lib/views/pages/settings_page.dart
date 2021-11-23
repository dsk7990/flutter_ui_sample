import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/src/scheduler/ticker.dart';
// import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage>
    with SingleTickerProviderStateMixin {
  // late AnimationController _animationController;
  // late Animation colorAnimation;
  // late Animation sizeAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _animationController =
    //     AnimationController(vsync: this, duration: const Duration(seconds: 2));
    // colorAnimation = ColorTween(begin: Colors.red, end: Colors.green).animate(
    //     CurvedAnimation(
    //         parent: _animationController, curve: Curves.slowMiddle));
    // sizeAnimation =
    //     Tween<double>(begin: 100, end: 200).animate(_animationController);
    // _animationController.addListener(() {
    //   setState(() {});
    // });
    // _animationController.addStatusListener((status) {
    //   setState(() {
    //     print(status.toString());
    //   });
    // });
    // _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const GFAvatar(
                          size: 40,
                          child: Text(
                            'JK',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.green),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Da Canedy',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'abcd@gmail.com',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Text(
                            '+91 9898998998',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topRight,
                          child: const Icon(
                            Icons.check_circle,
                            size: 20,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    height: 2,
                  ),
                  Row(
                    children: [
                      GFToggle(
                        onChanged: (val) {},
                        value: true,
                        type: GFToggleType.ios,
                      ),
                      const Text('Site Contact')
                    ],
                  ),
                ],
              ),
            ),
            // title: const Text(
            //   'John Canedy',
            //   style: TextStyle(
            //     color: Colors.grey,
            //     fontWeight: FontWeight.w700,
            //   ),
            // ),
            // subTitle: Text(
            //   'Project Manager',
            //   style: TextStyle(
            //     color: Colors.grey.shade300,
            //   ),
            // ),
            // avatar: InkWell(
            //   onTap: () {},
            //   child: const GFAvatar(
            //       size: 40,
            //       child: Text(
            //         'JK',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //       backgroundColor: Colors.green),
            // ),
            // size: 20,
            // description: Column(
            //   children: const [],
            // ),
            // activeBgColor: Colors.green,
            // type: GFCheckboxType.circle,
            // activeIcon: const Icon(
            //   Icons.check,
            //   size: 10,
            //   color: Colors.white,
            // ),
            // onChanged: (value) {
            //   // setState(() {
            //   //   isChecked = value;
            //   // });
            // },
            // value: true,
            // inactiveIcon: null,

            // inactiveIcon: Icon(Icons.local_dining),
          ),
          Container(
            height: 130,
            child: InkWell(
              onTap: () {},
              child: GFCheckboxListTile(
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 10),
                title: const Text(
                  'John Canedy',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subTitle: Text(
                  'Project Manager',
                  style: TextStyle(
                    color: Colors.grey.shade300,
                  ),
                ),
                avatar: InkWell(
                  onTap: () {},
                  child: const GFAvatar(
                      size: 40,
                      child: Text(
                        'JK',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.green),
                ),
                size: 20,
                description: Container(
                    child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Divider(
                      height: 2,
                    ),
                    Row(
                      children: [
                        GFToggle(
                          onChanged: (val) {},
                          value: true,
                          type: GFToggleType.ios,
                        ),
                        const Text('+91 9898989898')
                      ],
                    ),
                  ],
                )),
                activeBgColor: Colors.green,
                type: GFCheckboxType.circle,
                activeIcon: const Icon(
                  Icons.check,
                  size: 10,
                  color: Colors.white,
                ),
                onChanged: (value) {
                  // setState(() {
                  //   isChecked = value;
                  // });
                },
                value: true,
                inactiveIcon: null,

                // inactiveIcon: Icon(Icons.local_dining),
              ),
            ),
          ),
        ],
      ),
    );
    //  Center(
    //   child: Container(
    //     width: sizeAnimation.value,
    //     height: sizeAnimation.value,
    //     color: colorAnimation.value,
    //   ),
    // );
  }
}
