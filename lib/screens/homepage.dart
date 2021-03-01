import 'package:flutter/material.dart';
//import 'package:learn_app/screens/navigation.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) => LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black,Colors.transparent],
            ).createShader(rect),
            blendMode: BlendMode.darken,
                      child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken ),
                  image: AssetImage('assets/images/op.jpg'),
                  
                )
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                // Center(
                //   child: Container(
                //     padding: EdgeInsets.only(top:45),
                //     child: Image.asset('assets/images/crypt.png',
                //     width: 100,
                //     height: 100,                
                //     ),
                //   ),
                // ),

                // Container(
                //   child: Center(
                //     child: 
                //       Text('C R Y P T - E T', style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 60,
                //       fontWeight: FontWeight.bold
                //     ),
                //   ),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(bottom: 100),
                //   child: Center(
                //     child: Text('The wallet of the future - One wallet for all your cryptocurrency',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 15,
                //         fontWeight: FontWeight.bold
                //       ),),
                //   ),
                // ),
                Container(
                  child: Center(
                  child: Container(
                    padding: EdgeInsets.only(top:45),
                    child: Image.asset('assets/images/crypt.png',
                    width: 100,
                    height: 100,                
                    ),
                  ),
                 ),
                ),
                
                Container(
                  padding: EdgeInsets.only(top:20),
                  child: Center(
                    child: 
                      Text('C R Y P T - E T', style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom:20, top:20),
                  child: Center(
                    child: Text('The wallet of the future - One wallet for all your cryptocurrency',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
                TextInputField(
                  icon: Icons.mail,
                  hint: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  ),
                PasswordInput(
                  icon: Icons.lock,
                  hint: 'Password',
                  inputAction: TextInputAction.done,
                ),
                // SizedBox(
                //   height: 25,
                // ),
                Container(
                  child: RoundedButton(),
                )

                
              ],
            )
          )
        ],
      );
     
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key, this.buttonName,
  }) : super(key: key);

  final String buttonName;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue.withOpacity(0.5),
      ),
      child:FlatButton(onPressed: (){}, 
        child:Text('Login', 
          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold ) ,))
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key, 
    @required this.icon,
    @required this.hint, 
    this.inputType, 
    this.inputAction,
  }) : super(key: key);
  
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width *0.8,
        decoration: BoxDecoration(color: Colors.yellow[500].withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),             
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Icon(
                icon,
                size:30,
                color: Colors.black,
                ),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 35,
            ),
          ),
          obscureText: true,
          style: TextStyle(fontSize: 20),
          keyboardType: inputType,
          textInputAction: inputAction,

        ),
      ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key key, 
    @required this.icon, 
    @required this.hint, 
    this.inputType, 
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(color: Colors.yellow[500].withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),             
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Icon(
                icon,
                size:30,
                color: Colors.black,
                ),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 35,
            ),
          ),
          style: TextStyle(fontSize: 20),
          keyboardType: inputType,
          textInputAction: inputAction,

        ),
      ),
      ),
    );
  }
}