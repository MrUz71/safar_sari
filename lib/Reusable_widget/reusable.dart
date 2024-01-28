import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

Container reusableTextField(String text, title, IconData icon,
    bool isPasswordType, TextEditingController controller) {
  return Container(
    height: 110,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xFFE6E8EC),
    ),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: "PlayfairDisplay",
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            controller: controller,
            obscureText: isPasswordType,
            enableSuggestions: !isPasswordType,
            autocorrect: !isPasswordType,
            cursorColor: Colors.grey,
            style: TextStyle(
              color: Colors.black.withOpacity(0.9),
              fontWeight: FontWeight.w400,
              fontFamily: "PlayfairDisplay",
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: Colors.grey,
              ),
              labelText: text,
              labelStyle: TextStyle(color: Colors.grey.withOpacity(0.9)),
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: const Color(0xFFE6E8EC),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
            keyboardType: isPasswordType
                ? TextInputType.visiblePassword
                : TextInputType.emailAddress,
          ),
        ],
      ),
    ),
  );
}

Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.4,
    height: 55,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style:  TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontFamily: "PlayfairDisplay",
          fontSize: 16,
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.blueAccent;
            }
            return const Color(0xFF1E40F4);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

TextButton firebaseUITextButton(String title, Function ontap) {
  return TextButton(
    onPressed: ontap(),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    ),
  );
}

Container LogoSafarSari() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xFF23B24B)),
          child: const Center(
            child: Text(
              'S',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          'Safar Sari',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            fontFamily: "Agbalumo",
          ),
        ),
      ],
    ),
  );
}
