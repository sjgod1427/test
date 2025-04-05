// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login Screen',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         fontFamily: 'SF Pro Display',
//       ),
//       home: const LoginSignupScreen(),
//     );
//   }
// }

// class LoginSignupScreen extends StatefulWidget {
//   const LoginSignupScreen({Key? key}) : super(key: key);

//   @override
//   _LoginSignupScreenState createState() => _LoginSignupScreenState();
// }

// class _LoginSignupScreenState extends State<LoginSignupScreen> {
//   bool isLoginMode = true;
//   bool isPasswordVisible = false;
//   bool rememberMe = false;

//   final TextEditingController emailController1 = TextEditingController();
//   final TextEditingController passwordController1 = TextEditingController();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController userNameController = TextEditingController();

//   @override
//   void dispose() {
//     emailController1.dispose();
//     passwordController1.dispose();
//     nameController.dispose();
//     userNameController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Use resizeToAvoidBottomInset to prevent the keyboard from causing overflow
//       resizeToAvoidBottomInset: false,
//       body: GestureDetector(
//         // Add this gesture detector to dismiss keyboard when tapping outside text fields
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: Stack(
//           children: [
//             // Background with stars
//             Container(
//               decoration: const BoxDecoration(
//                 color: Color(0xFF1A1B23),
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/Star.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),

//             Positioned(
//               top: 20,
//               right: 0,
//               width: MediaQuery.of(context).size.width * 0.8,
//               height: MediaQuery.of(context).size.height * 0.5,
//               child: Opacity(
//                 opacity: 0.9,
//                 child: Image.asset(
//                   'assets/images/Light.png',
//                   width: 350,
//                   height: 400,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),

//             // Main content
//             SafeArea(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Logo section
//                   const SizedBox(height: 40),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 40),
//                     child: Row(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Image.asset(
//                             'assets/images/Vector.png',
//                             width: 20,
//                             height: 20,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         const Text(
//                           'Logoipsum',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   // Get Started section
//                   const Padding(
//                     padding: EdgeInsets.only(left: 20, top: 40),
//                     child: Text(
//                       'Get Started now',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 32,
//                       ),
//                     ),
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, top: 8),
//                     child: Text(
//                       isLoginMode
//                           ? 'Create an account or log in to explore about our app'
//                           : 'Create an account to explore about our app',
//                       style: const TextStyle(
//                         color: Colors.white70,
//                         fontSize: 10,
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 25),

//                   // Use Expanded to make the form take the remaining space
//                   Expanded(
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: const EdgeInsets.symmetric(horizontal: 5),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Column(
//                         children: [
//                           // Toggle buttons
//                           Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         isLoginMode = true;
//                                       });
//                                     },
//                                     child: Container(
//                                       padding: const EdgeInsets.symmetric(
//                                           vertical: 16),
//                                       decoration: BoxDecoration(
//                                         color: isLoginMode
//                                             ? Colors.grey[200]
//                                             : Colors.white,
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                       child: Center(
//                                         child: Text(
//                                           'Log In',
//                                           style: TextStyle(
//                                             fontWeight: isLoginMode
//                                                 ? FontWeight.bold
//                                                 : FontWeight.normal,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(width: 8),
//                                 Expanded(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         isLoginMode = false;
//                                       });
//                                     },
//                                     child: Container(
//                                       padding: const EdgeInsets.symmetric(
//                                           vertical: 16),
//                                       decoration: BoxDecoration(
//                                         color: !isLoginMode
//                                             ? Colors.grey[200]
//                                             : Colors.white,
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                       child: Center(
//                                         child: Text(
//                                           'Sign Up',
//                                           style: TextStyle(
//                                             fontWeight: !isLoginMode
//                                                 ? FontWeight.bold
//                                                 : FontWeight.normal,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),

//                           // Form fields - make this take the remaining space
//                           Expanded(
//                             child: SingleChildScrollView(
//                               // Add these physics for better scrolling
//                               physics: const ClampingScrollPhysics(),
//                               padding: const EdgeInsets.all(20),
//                               child: isLoginMode
//                                   ? buildLoginForm()
//                                   : buildSignupForm(),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Extract Login form to a separate method for better readability
//   Widget buildLoginForm() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Email',
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.grey,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextField(
//           controller: emailController1,
//           decoration: InputDecoration(
//             hintText: 'Email',
//             filled: true,
//             fillColor: Colors.grey[100],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: BorderSide.none,
//             ),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//           ),
//           keyboardType: TextInputType.emailAddress,
//         ),

//         const SizedBox(height: 16),

//         const Text(
//           'Password',
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.grey,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextField(
//           controller: passwordController1,
//           obscureText: !isPasswordVisible,
//           decoration: InputDecoration(
//             hintText: 'Password',
//             filled: true,
//             fillColor: Colors.grey[100],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: BorderSide.none,
//             ),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//             suffixIcon: IconButton(
//               icon: Icon(
//                 isPasswordVisible ? Icons.visibility_off : Icons.visibility,
//                 color: Colors.grey,
//               ),
//               onPressed: () {
//                 setState(() {
//                   isPasswordVisible = !isPasswordVisible;
//                 });
//               },
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 SizedBox(
//                   width: 24,
//                   height: 24,
//                   child: Checkbox(
//                     value: rememberMe,
//                     onChanged: (value) {
//                       setState(() {
//                         rememberMe = value ?? false;
//                       });
//                     },
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 8),
//                 const Text(
//                   'Remember me',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//             TextButton(
//               onPressed: () {
//                 // Forgot password functionality
//               },
//               child: const Text(
//                 'Forgot Password ?',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.blue,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ],
//         ),

//         const SizedBox(height: 24),

//         // Log In button
//         ElevatedButton(
//           onPressed: () {
//             // Implement login functionality
//             final email = emailController1.text;
//             final password = passwordController1.text;
//             print('Logging in with: $email, $password');
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.blue,
//             foregroundColor: Colors.white,
//             minimumSize: const Size.fromHeight(50),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//           child: const Text(
//             'Log In',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         const Center(
//           child: Text(
//             'Or',
//             style: TextStyle(
//               color: Colors.grey,
//               fontSize: 14,
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         // Social login buttons
//         OutlinedButton.icon(
//           onPressed: () {
//             // Implement Google sign in
//           },
//           icon: Image.asset(
//             'assets/images/google.png',
//             height: 24,
//           ),
//           label: const Text(
//             'Continue with Google',
//             style: TextStyle(
//               color: Colors.black87,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           style: OutlinedButton.styleFrom(
//             minimumSize: const Size.fromHeight(50),
//             side: BorderSide(color: Colors.grey[300]!),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         OutlinedButton.icon(
//           onPressed: () {
//             // Implement Facebook sign in
//           },
//           icon: const Icon(
//             Icons.facebook,
//             color: Colors.blue,
//             size: 24,
//           ),
//           label: const Text(
//             'Continue with Facebook',
//             style: TextStyle(
//               color: Colors.black87,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           style: OutlinedButton.styleFrom(
//             minimumSize: const Size.fromHeight(50),
//             side: BorderSide(color: Colors.grey[300]!),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//         ),

//         // Add extra space at the bottom to ensure scrollability when keyboard is open
//         const SizedBox(height: 40),
//       ],
//     );
//   }

//   // Extract Signup form to a separate method for better readability
//   Widget buildSignupForm() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Name',
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.grey,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextField(
//           controller: nameController,
//           decoration: InputDecoration(
//             hintText: 'Name',
//             filled: true,
//             fillColor: Colors.grey[100],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: BorderSide.none,
//             ),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//           ),
//         ),

//         const SizedBox(height: 16),

//         const Text(
//           'Username',
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.grey,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextField(
//           controller: userNameController,
//           decoration: InputDecoration(
//             hintText: 'Username',
//             filled: true,
//             fillColor: Colors.grey[100],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: BorderSide.none,
//             ),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//           ),
//         ),

//         const SizedBox(height: 16),

//         const Text(
//           'Email',
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.grey,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextField(
//           controller: emailController1,
//           decoration: InputDecoration(
//             hintText: 'Email',
//             filled: true,
//             fillColor: Colors.grey[100],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: BorderSide.none,
//             ),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//           ),
//           keyboardType: TextInputType.emailAddress,
//         ),

//         const SizedBox(height: 16),

//         const Text(
//           'Password',
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.grey,
//           ),
//         ),
//         const SizedBox(height: 8),
//         TextField(
//           controller: passwordController1,
//           obscureText: !isPasswordVisible,
//           decoration: InputDecoration(
//             hintText: 'Password',
//             filled: true,
//             fillColor: Colors.grey[100],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: BorderSide.none,
//             ),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//             suffixIcon: IconButton(
//               icon: Icon(
//                 isPasswordVisible ? Icons.visibility_off : Icons.visibility,
//                 color: Colors.grey,
//               ),
//               onPressed: () {
//                 setState(() {
//                   isPasswordVisible = !isPasswordVisible;
//                 });
//               },
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         const SizedBox(height: 24),

//         // Sign Up button
//         ElevatedButton(
//           onPressed: () {
//             // Implement signup functionality
//             final email = emailController1.text;
//             final password = passwordController1.text;
//             final name = nameController.text;
//             final username = userNameController.text;
//             print('Signing up with: $name, $username, $email, $password');
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.blue,
//             foregroundColor: Colors.white,
//             minimumSize: const Size.fromHeight(50),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//           child: const Text(
//             'Sign Up',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         const Center(
//           child: Text(
//             'Or',
//             style: TextStyle(
//               color: Colors.grey,
//               fontSize: 14,
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         // Social login buttons
//         OutlinedButton.icon(
//           onPressed: () {
//             // Implement Google sign in
//           },
//           icon: Image.asset(
//             'assets/images/google.png',
//             height: 24,
//           ),
//           label: const Text(
//             'Continue with Google',
//             style: TextStyle(
//               color: Colors.black87,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           style: OutlinedButton.styleFrom(
//             minimumSize: const Size.fromHeight(50),
//             side: BorderSide(color: Colors.grey[300]!),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         OutlinedButton.icon(
//           onPressed: () {
//             // Implement Facebook sign in
//           },
//           icon: const Icon(
//             Icons.facebook,
//             color: Colors.blue,
//             size: 24,
//           ),
//           label: const Text(
//             'Continue with Facebook',
//             style: TextStyle(
//               color: Colors.black87,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           style: OutlinedButton.styleFrom(
//             minimumSize: const Size.fromHeight(50),
//             side: BorderSide(color: Colors.grey[300]!),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//         ),

//         // Add extra space at the bottom to ensure scrollability when keyboard is open
//         const SizedBox(height: 40),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:lottie/lottie.dart';

import 'package:test/authentication.dart';
import 'package:test/loginSucessScreen.dart';

// Import Auth Services
// Make sure this file contains your AuthServices class

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SF Pro Display',
      ),
      home: const LoginSignupScreen(),
    );
  }
}

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isLoginMode = true;
  bool isPasswordVisible = false;
  bool rememberMe = false;
  bool isLoading = false;

  final TextEditingController emailController1 = TextEditingController();
  final TextEditingController passwordController1 = TextEditingController();
  final TextEditingController emailController2 = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  // Create instance of AuthServices
  final AuthServices _authServices = AuthServices();

  @override
  void dispose() {
    emailController1.dispose();
    passwordController1.dispose();
    nameController.dispose();
    userNameController.dispose();
    super.dispose();
  }

  // Show a snackbar with message
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  // Handle login
  Future<void> _handleLogin() async {
    if (emailController1.text.isEmpty || passwordController1.text.isEmpty) {
      _showSnackBar('Please fill all fields');
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final result = await _authServices.loginUser(
        email: emailController1.text.trim(),
        password: passwordController1.text,
      );

      if (result == "success") {
        _showSnackBar('Login successful');

        // Show transparent dialog with animation
        showDialog(
          context: context,
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.2), // dim background
          builder: (context) => Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Lottie.asset(
                'assets/images/Animation - 1743861227000.json',
                repeat: false,
                onLoaded: (composition) async {
                  await Future.delayed(composition.duration);
                  Navigator.of(context).pop(); // close dialog
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Placeholder()),
                  );
                },
              ),
            ),
          ),
        );
      } else {
        _showSnackBar('Login failed: $result');
      }
    } catch (e) {
      _showSnackBar('Error: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  // Handle signup
  Future<void> _handleSignup() async {
    if (emailController2.text.isEmpty ||
        passwordController2.text.isEmpty ||
        nameController.text.isEmpty ||
        userNameController.text.isEmpty) {
      _showSnackBar('Please fill all fields');
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final result = await _authServices.signUpUser(
        email: emailController2.text.trim(),
        username: userNameController.text.trim(),
        password: passwordController2.text,
        name: nameController.text.trim(),
      );

      if (result == "Successfull") {
        _showSnackBar('Account created successfully');
        setState(() {
          isLoginMode = true; // Switch to login mode
        });
      } else {
        _showSnackBar('Signup failed: $result');
      }
    } catch (e) {
      _showSnackBar('Error: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  // Handle Google Sign-In
  Future<void> _handleGoogleSignIn() async {
    setState(() {
      isLoading = true;
    });

    try {
      final result = await _authServices.signInWithGoogle(context);
      if (result != null) {
        _showSnackBar('Google Sign-In successful');
        // Navigation is handled in signInWithGoogle method
      } else {
        _showSnackBar('Google Sign-In cancelled or failed');
      }
    } catch (e) {
      _showSnackBar('Error with Google Sign-In: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use resizeToAvoidBottomInset to prevent the keyboard from causing overflow
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        // Add this gesture detector to dismiss keyboard when tapping outside text fields
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            // Background with stars
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF1A1B23),
                image: DecorationImage(
                  image: AssetImage('assets/images/Star.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned(
              top: 20,
              right: 0,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                  'assets/images/Light.png',
                  width: 350,
                  height: 400,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            // Loading indicator
            if (isLoading)
              Container(
                color: Colors.black.withOpacity(0.5),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),

            // Main content
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo section
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/images/Vector.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Logoipsum',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Get Started section
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    child: Text(
                      'Get Started now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 8),
                    child: Text(
                      isLoginMode
                          ? 'Create an account or log in to explore about our app'
                          : 'Create an account to explore about our app',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 10,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Use Expanded to make the form take the remaining space
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          // Toggle buttons
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLoginMode = true;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      decoration: BoxDecoration(
                                        color: isLoginMode
                                            ? Colors.grey[200]
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Log In',
                                          style: TextStyle(
                                            fontWeight: isLoginMode
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLoginMode = false;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      decoration: BoxDecoration(
                                        color: !isLoginMode
                                            ? Colors.grey[200]
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            fontWeight: !isLoginMode
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Form fields - make this take the remaining space
                          Expanded(
                            child: SingleChildScrollView(
                              // Add these physics for better scrolling
                              physics: const ClampingScrollPhysics(),
                              padding: const EdgeInsets.all(20),
                              child: isLoginMode
                                  ? buildLoginForm()
                                  : buildSignupForm(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Extract Login form to a separate method for better readability
  Widget buildLoginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: emailController1,
          decoration: InputDecoration(
            hintText: 'Email',
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
          keyboardType: TextInputType.emailAddress,
        ),

        const SizedBox(height: 16),

        const Text(
          'Password',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: passwordController1,
          obscureText: !isPasswordVisible,
          decoration: InputDecoration(
            hintText: 'Password',
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 16),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value ?? false;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                // Forgot password functionality
              },
              child: const Text(
                'Forgot Password ?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 24),

        // Log In button
        ElevatedButton(
          onPressed: _handleLogin,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            'Log In',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 16),

        const Center(
          child: Text(
            'Or',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Social login buttons
        OutlinedButton.icon(
          onPressed: _handleGoogleSignIn,
          icon: Image.asset(
            'assets/images/google.png',
            height: 24,
          ),
          label: const Text(
            'Continue with Google',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            side: BorderSide(color: Colors.grey[300]!),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

        const SizedBox(height: 16),

        OutlinedButton.icon(
          onPressed: () {
            // Implement Facebook sign in if needed
            _showSnackBar("Facebook login not implemented yet");
          },
          icon: const Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 24,
          ),
          label: const Text(
            'Continue with Facebook',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            side: BorderSide(color: Colors.grey[300]!),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

        // Add extra space at the bottom to ensure scrollability when keyboard is open
        const SizedBox(height: 40),
      ],
    );
  }

  // Extract Signup form to a separate method for better readability
  Widget buildSignupForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Name',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: 'Name',
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
        ),

        const SizedBox(height: 16),

        const Text(
          'Username',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: userNameController,
          decoration: InputDecoration(
            hintText: 'Username',
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
        ),

        const SizedBox(height: 16),

        const Text(
          'Email',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: emailController2,
          decoration: InputDecoration(
            hintText: 'Email',
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
          keyboardType: TextInputType.emailAddress,
        ),

        const SizedBox(height: 16),

        const Text(
          'Password',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: passwordController2,
          obscureText: !isPasswordVisible,
          decoration: InputDecoration(
            hintText: 'Password',
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 24),

        // Sign Up button
        ElevatedButton(
          onPressed: _handleSignup,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 16),

        const Center(
          child: Text(
            'Or',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Social login buttons
        OutlinedButton.icon(
          onPressed: _handleGoogleSignIn,
          icon: Image.asset(
            'assets/images/google.png',
            height: 24,
          ),
          label: const Text(
            'Continue with Google',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            side: BorderSide(color: Colors.grey[300]!),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

        const SizedBox(height: 16),

        OutlinedButton.icon(
          onPressed: () {
            // Facebook login not implemented in AuthServices
            _showSnackBar("Facebook login not implemented yet");
          },
          icon: const Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 24,
          ),
          label: const Text(
            'Continue with Facebook',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            side: BorderSide(color: Colors.grey[300]!),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

        // Add extra space at the bottom to ensure scrollability when keyboard is open
        const SizedBox(height: 40),
      ],
    );
  }
}
