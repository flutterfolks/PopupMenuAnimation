import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popup menu animation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Custom App Bar
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Icon(Icons.arrow_back_ios, color: Colors.black87,size: 28,),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: MyPopupMenu(
                      child: Icon(
                        Icons.filter_alt_outlined,
                        key: GlobalKey(),
                        color: Colors.black87,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Top section
            Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chest",
                              style: TextStyle(
                                fontSize: 52,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              "and legs",
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.black54,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: double.maxFinite,
                      width: 2,
                      margin: EdgeInsets.symmetric(vertical: 42),
                      color: Colors.grey.withOpacity(.6),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AUG",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "21",
                              style: TextStyle(
                                fontSize: 42,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Buttons
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Overview",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Exercises",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Muscles",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w800
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Most involved
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Most Involved",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),
            //Graph
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 24),
                child: ClipPath(
                  clipper: GraphClipper(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xff00A8F6),
                          child: Center(
                            child: Text(
                              "Upper Chest",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4,),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xff5834F1),
                          child: Center(
                            child: Text(
                              "Quads",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4,),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Color(0xffFA7504),
                          child: Center(
                            child: Text(
                              "Calf",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Others
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Others",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 16,),
                    Text(
                      "Shin, Deltoid, Biceps, Neck, Abs, Triceps",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class GraphClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path p = Path();

    //Cut the path
    p.moveTo(0,0);
    p.lineTo(size.width * .3, size.height);
    p.lineTo(size.width * .7, size.height);
    p.lineTo(size.width , 0);
    p.close();


    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}

class MyPopupMenu extends StatefulWidget {
  final Widget child;
  MyPopupMenu({Key? key,required this.child}) : assert(child.key != null), super(key: key);

  @override
  _MyPopupMenuState createState() => _MyPopupMenuState();
}

class _MyPopupMenuState extends State<MyPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.child,
      onTap: _showPopupMenu,
    );
  }

  void _showPopupMenu() {
    showCupertinoDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){
        //Find renderbox object
        RenderBox renderBox = (widget.child.key as GlobalKey).currentContext?.findRenderObject() as RenderBox;
        Offset position = renderBox.localToGlobal(Offset.zero);
        return PopupMenuContent(
          position: position,
          size: renderBox.size,
          onAction: (x){
            print(x);
          },
        );
      }
    );
  }
}

class PopupMenuContent extends StatefulWidget {
  final Offset position;
  final Size size;
  final ValueChanged<String>? onAction;
  const PopupMenuContent({Key? key,required this.position, required this.size, this.onAction}) : super(key: key);

  @override
  _PopupMenuContentState createState() => _PopupMenuContentState();
}

class _PopupMenuContentState extends State<PopupMenuContent> with SingleTickerProviderStateMixin{
  //Let's create animation
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 200));
    _animation = Tween<double>(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOutCubic));
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        _closePopup("");
        return false;
      },
      child: GestureDetector(
        onTap: ()=> _closePopup(""),
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.transparent,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right:  (MediaQuery.of(context).size.width - widget.position.dx) - widget.size.width,
                  top: widget.position.dy,
                  child: AnimatedBuilder(
                    animation: _animationController.view,
                    builder: (context, child){
                      return Transform.scale(
                        scale: _animation.value,
                        alignment: Alignment.topRight,
                        child: child,
                      );
                    },
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                        margin: EdgeInsets.only(left: 64),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 8,
                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            //Repeat now
                            GestureDetector(
                              onTap: ()=> _closePopup("repeatNow"),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFF0E3),
                                        borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Icon(Icons.repeat, color: Colors.red,),
                                  ),
                                  SizedBox(width: 12,),
                                  Text(
                                    "Repeat Now",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(.7),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Edit workout
                            SizedBox(height: 16,),

                            GestureDetector(
                              onTap: ()=> _closePopup("editWorkout"),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE1E1FC),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Icon(Icons.edit, color: Color(0xFF3840A2),),
                                  ),
                                  SizedBox(width: 12,),
                                  Text(
                                    "Edit Workout",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Share workout
                            SizedBox(height: 16,),

                            GestureDetector(
                              onTap: ()=> _closePopup("ShareNow"),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDDF3FD),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Icon(Icons.share, color:Color(0xFF0586C0),),
                                  ),
                                  SizedBox(width: 12,),
                                  Text(
                                    "Share Now",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //Chat box
                            SizedBox(height: 32,),

                            GestureDetector(
                              onTap: ()=> _closePopup("getHelp"),
                              child: Container(
                                width: double.maxFinite,
                                height: 150,
                                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                                decoration: BoxDecoration(
                                    color: Color(0xFFC2E3F6),
                                    borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.messenger_outline_rounded,
                                        color: Color(0xff1e93ad),
                                        size: 44,
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        "Get Help",
                                        style: TextStyle(
                                            color: Color(0xff1e93ad),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _closePopup(String action) {
    _animationController.reverse().whenComplete((){
      Navigator.of(context).pop();

      if(action.isNotEmpty) widget.onAction?.call(action);
    });
  }
}
