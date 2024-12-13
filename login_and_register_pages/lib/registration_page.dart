
// import 'package:flutter/material.dart';

// class RegistrationPage extends StatefulWidget {
//   const RegistrationPage({super.key});

//   @override
//   _RegistrationPageState createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<RegistrationPage> {
//   final _fullNameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _mobileController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Register'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,2
//             children: [
//               Center(
//                 child: Image.asset(
//                   'assets/images/reegister.jpg',
//                   height: 300,
//                   width: 300,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               _buildTextField(_fullNameController, 'Full Name'),
//               _buildTextField(_emailController, 'Email'),
//               _buildTextField(_mobileController, 'Mobile Number'),
//               _buildTextField(_passwordController, 'Password', obscureText: true),
//               _buildTextField(_confirmPasswordController, 'Confirm Password', obscureText: true),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _register,
//                 child: const Text('Register'),
//               ),
//               const Divider(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     icon: const Icon(Icons.facebook, color: Colors.blue),
//                     onPressed: () {
//                       // Add Facebook signup logic
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.g_mobiledata, color: Colors.red),
//                     onPressed: () {
//                       // Add Google signup logic
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to build TextField widgets
//   Widget _buildTextField(TextEditingController controller, String label, {bool obscureText = false}) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(labelText: label),
//       obscureText: obscureText,
//     );
//   }

//   // Registration button logic
//   void _register() {
//     if (_fullNameController.text.isEmpty ||
//         _emailController.text.isEmpty ||
//         _mobileController.text.isEmpty ||
//         _passwordController.text.isEmpty ||
//         _confirmPasswordController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please fill all fields')),
//       );
//     } else if (_passwordController.text != _confirmPasswordController.text) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Passwords do not match')),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Successfully Registered')),
//       );
//       Navigator.pushReplacementNamed(context, '/login');
//     }
//   }
// }




























import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/reegister.jpg',
                  height: 300,
                  width: 300,
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField(_fullNameController, 'Full Name'),
              _buildTextField(_emailController, 'Email'),
              _buildTextField(_mobileController, 'Mobile Number'),
              _buildTextField(_passwordController, 'Password', obscureText: true),
              _buildTextField(_confirmPasswordController, 'Confirm Password', obscureText: true),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _register,
                child: const Text('Register'),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.facebook, color: Colors.blue),
                    onPressed: () {
                      // Add Facebook signup logic
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.g_mobiledata, color: Colors.red),
                    onPressed: () {
                      // Add Google signup logic
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build TextField widgets
  Widget _buildTextField(TextEditingController controller, String label, {bool obscureText = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      obscureText: obscureText,
    );
  }

  // Registration button logic
  void _register() {
    if (_fullNameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _mobileController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields')),
      );
    } else if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwords do not match')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Successfully Registered')),
      );
      Navigator.pushReplacementNamed(context, '/login');
    }
  }
}
