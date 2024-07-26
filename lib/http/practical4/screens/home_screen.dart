import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../model/city.dart';
import '../model/country.dart';
import '../model/state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String base_url = "https://www.universal-tutorial.com/api";

  List<Country> countryList = [];
  List<States> stateList = [];
  List<City> cityList = [];

  String? _selectedCountry = null;
  String? _selectedState = null;
  String? _selectedCity = null;

  @override
  void initState() {
    super.initState();
    loadCountry();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Api'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButtonFormField(
                  value: _selectedCountry,
                  items: List.generate(
                    countryList.length,
                    (index) => DropdownMenuItem(
                      value: countryList[index].countryName,
                      child: Text('${countryList[index].countryName}'),
                    ),
                  ).toList(),
                  decoration: InputDecoration(labelText: 'Select Country'),
                  onChanged: (value) {
                    setState(() {
                      _selectedCountry = value!;
                      stateList.clear();
                      cityList.clear();
                      _selectedState = null;
                      _selectedCity = null;
                      loadStates(value);
                    });
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                DropdownButtonFormField(
                  value: _selectedState,
                  items: List.generate(
                    stateList.length,
                    (index) => DropdownMenuItem(
                      value: stateList[index].stateName,
                      child: Text('${stateList[index].stateName}'),
                    ),
                  ).toList(),
                  decoration: InputDecoration(labelText: 'Select State'),
                  onChanged: (value) {
                    // stateList = [];
                    setState(() {
                      _selectedState = value;
                      cityList.clear();
                      _selectedCity = null;
                      print(value);
                      loadCity(value);
                    });
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                DropdownButtonFormField(
                  value: _selectedCity,
                  items: List.generate(
                    cityList.length,
                        (index) => DropdownMenuItem(
                      value: cityList[index].cityName,
                      child: Text('${cityList[index].cityName}'),
                    ),
                  ).toList(),
                  decoration: InputDecoration(labelText: 'Select City'),
                  onChanged: (value) {
                    // stateList = [];
                    setState(() {
                      _selectedCity = value;
                      print(value);
                    });
                  },
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loadCountry() async {
    try {
      var headerMap = {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7InVzZXJfZW1haWwiOiJzZC4wNzdzZEBnbWFpbC5jb20iLCJhcGlfdG9rZW4iOiIxdk0yalk0dkVsbkhlOU9mcnlETTJEcGJNbGYzN2JqazB1akd4S25zYkw1blk2WGV1M1NER2V4QjREa2VLLWdCMzZVIn0sImV4cCI6MTcxNzkxMzg5OH0.Ks_PJBzFd5gWZbV9OMvtgxFuu-4nAQ52Be8tbOEoQpU',
        'Accept': 'application/json'
      };

      Response response =
          await get(Uri.parse('$base_url/countries'), headers: headerMap);
      if (response.statusCode == 200) {
        List<dynamic> countries = jsonDecode(response.body) as List<dynamic>;

        setState(() {
          countryList = List.generate(countries.length,
              (index) => Country.fromJson(countries[index])).toList();
          print(countryList);
          // stateList = [];
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> loadStates(String? country) async {
    try {
      var headerMap = {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7InVzZXJfZW1haWwiOiJzZC4wNzdzZEBnbWFpbC5jb20iLCJhcGlfdG9rZW4iOiIxdk0yalk0dkVsbkhlOU9mcnlETTJEcGJNbGYzN2JqazB1akd4S25zYkw1blk2WGV1M1NER2V4QjREa2VLLWdCMzZVIn0sImV4cCI6MTcxNzkxMzg5OH0.Ks_PJBzFd5gWZbV9OMvtgxFuu-4nAQ52Be8tbOEoQpU',
        'Accept': 'application/json'
      };

      Response response =
          await get(Uri.parse('$base_url/states/$country'), headers: headerMap);

      if (response.statusCode == 200) {
        List<dynamic> states = jsonDecode(response.body) as List<dynamic>;

        //  stateList.clear();

        setState(() {
          stateList = List.generate(
                  states.length, (index) => States.fromJson(states[index]))
              .toList();
          print(stateList);
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }


  Future<void> loadCity(String? state) async {
    try {
      var headerMap = {
        'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7InVzZXJfZW1haWwiOiJzZC4wNzdzZEBnbWFpbC5jb20iLCJhcGlfdG9rZW4iOiIxdk0yalk0dkVsbkhlOU9mcnlETTJEcGJNbGYzN2JqazB1akd4S25zYkw1blk2WGV1M1NER2V4QjREa2VLLWdCMzZVIn0sImV4cCI6MTcxNzkxMzg5OH0.Ks_PJBzFd5gWZbV9OMvtgxFuu-4nAQ52Be8tbOEoQpU',
        'Accept': 'application/json'
      };

      Response response =
      await get(Uri.parse('$base_url/cities/$state'), headers: headerMap);

      if (response.statusCode == 200) {
        List<dynamic> cities = jsonDecode(response.body) as List<dynamic>;

        //  stateList.clear();

        setState(() {
          cityList = List.generate(
              cities.length, (index) => City.fromJson(cities[index]))
              .toList();
          print(cityList);
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

}
