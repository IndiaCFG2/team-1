import 'package:civis_team1/utils/data.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "login";
  LoginScreen(
    this.submitFn,
    this.isLoading,
  );
  final bool isLoading;
  final void Function(
    String email,
    String password,
    String userName,
    String age,
    String gender,
    String prof,
    String region,
    bool isLogin,
    BuildContext ctx,
  ) submitFn;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  var _userEmail = '';
  var _userName = '';
  var _userPassword = '';
  var _userAge = '';
  var _userProf = '';
  var _userRegion = '';
  var _userGender = '';
  String _selectedGender;
  String _selectedRegion;
  List<String> _genders = Data.gender;
  List<String> _regions = Data.regions;

  void _trySubmit() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState.save();
      widget.submitFn(_userEmail.trim(), _userPassword.trim(), _userName.trim(),_userAge.trim(),_userGender,_userProf,_userRegion,_isLogin, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).primaryColor,
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // color: Colors.cyan,
                margin: EdgeInsets.all(30),
                elevation: 7,
                child: Container(
                  margin: EdgeInsets.all(25),

                  //============ Form  ===========

                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        if (!_isLogin)
                          TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            maxLength: 20,

                            decoration: InputDecoration(
                              labelText: 'Username',
                              helperText: ' Atleast 4 characters',
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                            ),
                            key: ValueKey('username'),
                            validator: (value) {
                              if (value.isEmpty || value.length < 4) {
                                return 'Please enter at least 4 characters';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _userName = value;
                            },
                          ),
                          if (!_isLogin)
                          SizedBox(
                          height: 20,
                        ),
                          TextFormField(
                          cursorColor: Theme.of(context).cursorColor,
                          maxLength: 20,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            helperText: 'example@sample.com',
                          ),
                          key: ValueKey('email'),
                          validator: (value) {
                            if (value.isEmpty || !value.contains('@')) {
                              return 'Please enter a valid email address.';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (value) {
                            _userEmail = value;
                          },
                        ),
                        if (!_isLogin)
                          SizedBox(
                            height: 20,
                          ),

                          // =========Age

                          if (!_isLogin)
                          TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              labelText: 'Age',
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                            ),
                            key: ValueKey('age'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'This field is mandatory';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _userAge = value;
                            },
                          ),
                          if (!_isLogin)
                          SizedBox(
                          height: 20,
                        ),
                        
                        // ========= Prof

                          if (!_isLogin)
                          TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              labelText: 'Profession',
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                            ),
                            key: ValueKey('prof'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'This field is mandatory';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _userProf = value;
                            },
                          ),
                          // if (!_isLogin)
                          SizedBox(
                          height: 20,
                        ),

                        // ========= Gender

                        if (!_isLogin)
                        Center(
                        child: DropdownButton(
                          hint: Text('Gender'),
                          value: _selectedGender,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedGender = newValue;
                              _userGender=newValue;
                            });
                          },
                          items: _genders.map((role) {
                            return DropdownMenuItem(
                              child: new Text(role),
                              value: role,
                            );
                          }).toList(),
                        ),
                      ),

                        // ========= Region

                        if (!_isLogin)
                        Center(
                        child: DropdownButton(
                          hint: Text('Region'),
                          value: _selectedRegion,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedRegion = newValue;
                              _userRegion=newValue;
                            });
                          },
                          items: _regions.map((role) {
                            return DropdownMenuItem(
                              child: new Text(role),
                              value: role,
                            );
                          }).toList(),
                        ),
                      ),

                      // ========= Password

                        TextFormField(
                          cursorColor: Theme.of(context).cursorColor,
                          maxLength: 20,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            helperText: 'Atleast 8 characters',
                          ),
                          key: ValueKey('password'),
                          validator: (value) {
                            if (value.isEmpty || value.length < 7) {
                              return 'Password must be at least 7 characters long.';
                            }
                            return null;
                          },
                          obscureText: true,
                          onSaved: (value) {
                            _userPassword = value;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // TextFormField(
                        //   cursorColor: Theme.of(context).cursorColor,
                        //   maxLength: 20,
                        //   decoration: InputDecoration(
                        //     labelText: 'Confirm Password',
                        //     border: new OutlineInputBorder(
                        //       borderRadius: new BorderRadius.circular(10.0),
                        //     ),
                        //     helperText: 'Atleast 8 characters',
                        //   ),
                        //   key: ValueKey('password'),
                        //   validator: (value) {
                        //     if (value.isEmpty || value.length < 7) {
                        //       return 'Password must be at least 7 characters long.';
                        //     }
                        //     return null;
                        //   },
                        //   obscureText: true,
                        //   onSaved: (value) {
                        //     _userPassword = value;
                        //   },
                        // ),
                        // SizedBox(
                        //   height: 20,
                        // ),

                        // ========= Buttons

                        if (widget.isLoading) CircularProgressIndicator(),
                        if (!widget.isLoading)
                         RaisedButton(
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
                          child: Text(
                            _isLogin ? 'Login' : 'Signup',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: _trySubmit,),
                        if (!widget.isLoading)
                          FlatButton(
                            textColor: Theme.of(context).primaryColor,
                            child: Text(_isLogin
                                ? 'Create new account'
                                : 'I already have an account'),
                            onPressed: () {
                              setState(() {
                                _isLogin = !_isLogin;
                              });
                            },
                          )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
