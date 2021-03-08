import 'package:flutter/material.dart';

// an Elevated Button that can be reused and customized.
class CustomButton extends StatelessWidget {
  final Widget buttonChild;
  final Function onPressedAction;
  final Color colour;
  final String logo;
  CustomButton(
      {@required this.buttonChild,
      @required this.onPressedAction,
      this.colour,
      this.logo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ElevatedButton(
        onPressed: onPressedAction,
        child: buttonChild,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colour),
        ),
      ),
    );
  }
}

class SignInButton extends CustomButton {
  SignInButton({
    @required String buttonText,
    @required Function buttonOnPressed,
    Color buttonColour: Colors.white,
    Color buttonTextColour: Colors.black87,
  })  : assert(buttonText != null),
        super(
          buttonChild: Text(
            buttonText,
            style: TextStyle(color: buttonTextColour),
          ),
          onPressedAction: buttonOnPressed,
          colour: buttonColour,
        );
}

class SocialSignInButton extends CustomButton {
  SocialSignInButton({
    @required String buttonText,
    @required Function buttonOnPressed,
    Color buttonColour: Colors.white,
    Color buttonTextColour: Colors.black,
    @required String buttonLogo,
  })  : assert(buttonText != null),
        assert(buttonLogo != null),
        super(
          buttonChild: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(buttonLogo, width: 35.0),
              Text(
                buttonText,
                style: TextStyle(color: buttonTextColour),
              ),
              Opacity(
                opacity: 0,
                child: Image.asset(buttonLogo),
              ),
            ],
          ),
          onPressedAction: buttonOnPressed,
          colour: buttonColour,
          logo: buttonLogo,
        );
}
