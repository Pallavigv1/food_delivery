import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum AddressType { home, work, rental, billing, other }

class Address {
  final String firstname;
  final String lastname;
  final int id;
  final String label;
  final String fulladdress;
  final int phonenumber;
  final String countrycode;
  final String state;
  final String country;
  final bool isDefault;
  final AddressType type;
  final int zipCode;

  Address({
    required this.firstname,
    required this.lastname,
    required this.id,
    required this.label,
    required this.fulladdress,
    required this.phonenumber,
    required this.countrycode,
    required this.country,
    required this.state,
    this.isDefault = false,
    this.type = AddressType.work,
    required this.zipCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      firstname: json['Firstname'],
      lastname: json['Lastname'],
      id: json['id'],
      label: (json['label']),
      fulladdress: (json['fulladdress']),
      phonenumber: json['Phonenumber'],
      countrycode: json['Countrycode'],
      country: json['Country'],
      isDefault: json['isDefault'],
      state: json['State'],
      zipCode: json['zipcode'],
    );
  }
  String get typeString => type.name;
}

// class Label {
//   final String label1;
//   final String label2;
//   final String label3;
//   final String label4;
//   final String label5;

//   Label({
//     required this.label1,
//     required this.label2,
//     required this.label3,
//     required this.label4,
//     required this.label5,
//   });

//   factory Label.fromJson(Map<String, dynamic> json) {
//     return Label(
//       label1: json['Home'],
//       label2: json['office'],
//       label3: json['Rental'],
//       label4: json['billing'],
//       label5: json['other'],
//     );
//   }
// }

// class AddressDetails {
//   final String doornumberandfloornumber;
//   final String street;
//   final String city;
//   final String stateorprovinceorarea;
//   final int zipcode;

//   AddressDetails({
//     required this.doornumberandfloornumber,
//     required this.street,
//     required this.city,
//     required this.stateorprovinceorarea,
//     required this.zipcode,
//   });

//   factory AddressDetails.fromJson(Map<String, dynamic> json) {
//     return AddressDetails(
//       doornumberandfloornumber: json['doornumberandfloornumber'],
//       street: json['street'],
//       city: json['city'],
//       stateorprovinceorarea: json['stateorprovinceorarea'],
//       zipcode: json['zipcode'],
//     );
//   }
// }

// class AddressType {
//   final String home;
//   final String office;
//   final String rental;
//   final String billing;
//   final String other;

//   AddressType({
//     required this.home,
//     required this.office,
//     required this.rental,
//     required this.billing,
//     required this.other,
//   });

//   factory AddressType.fromJson(Map<String, dynamic> json) {
//     return AddressType(
//       home: json['home'],
//       office: json['office'],
//       rental: json['rental'],
//       billing: json['billing'],
//       other: json['other'],
//     );
//   }
// }
