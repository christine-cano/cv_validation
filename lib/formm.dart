import 'package:flutter/material.dart';
import 'main.dart';

class FormRoute extends StatelessWidget {
  FormRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Sign Up Page')),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                hintText: 'Enter Name',
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Name is required';
                                }
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Age',
                                hintText: 'Enter Age',
                                prefixIcon: Icon(Icons.date_range),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Age is required';
                                } else if (int.tryParse(value)! < 18) {
                                  return 'Age restricted';
                                }
                                return null;
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Address',
                                hintText: 'Enter Address',
                                prefixIcon: Icon(Icons.location_city),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Address is required';
                                }
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Birthday',
                                hintText: 'Enter Birthday',
                                prefixIcon: Icon(Icons.cake),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Birthday is required';
                                }
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Place of Birth',
                                hintText: 'Enter Place of Birth',
                                prefixIcon: Icon(Icons.location_city),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Place of birth is required';
                                }
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Sex',
                                hintText: 'Enter Sex',
                                prefixIcon: Icon(Icons.girl),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Sex is required';
                                }
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Citizenship',
                                hintText: 'Enter Citizenship',
                                prefixIcon: Icon(Icons.flag),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Citizenship is required';
                                }
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Civil Status',
                                hintText: 'Enter Civil Status',
                                prefixIcon: Icon(Icons.person_add),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Civil status is required';
                                }
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Religion',
                                hintText: 'Enter Religion',
                                prefixIcon: Icon(Icons.church),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Religion is required';
                                }
                              },
                            )),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: MaterialButton(
                                minWidth: double.infinity,
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                    Navigator.pushNamed(context, '/first');
                                    return;
                                  }
                                },
                                child: Text('Create'),
                                color: Colors.pink[200],
                                textColor: Colors.black)),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
