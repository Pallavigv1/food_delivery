import 'package:food_delivery/constants/shipping_address.dart';
import 'package:fpdart/fpdart.dart';

class RandomAddresses {
  List<Address> getAddresses() {
    return [
      Address(
        firstname: 'Pallavi',
        lastname: 'G V',
        id: 1,
        label: "Home",
        fulladdress:
            "18/3, Ajronda, Near Saini Dharamshala,/n Faridabad, Faridabad",
        phonenumber: 01292222682,
        countrycode: " +91",
        country: "India",
        state: "Delhi",
        isDefault: true,
        zipCode: 121001,
      ),
      Address(
        firstname: 'Doremon',
        lastname: 'D',
        id: 2,
        label: "Office",
        fulladdress: "C/205,Shripad Nagar, Vip Road, Karelibaug",
        phonenumber: 5530546,
        countrycode: " +91",
        country: "India",
        state: "Gujarat",
        isDefault: false,
        zipCode: 390018,
      ),
    ];
  }

  Address getDefaultAddress() {
    final addresses = getAddresses();

    for (int i = 0; i < addresses.length; i++) {
      if (addresses[i].isDefault) {
        return addresses[i]; // found default
      }
    }

    return addresses[0]; // if none found
  }
}
