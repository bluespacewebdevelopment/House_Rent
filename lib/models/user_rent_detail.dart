class User_Rent {
  final String name;
  final String roomNo;
  final double rent;
  final bool isPaid;
  final double remainingAmount;

  User_Rent(
      this.name, this.roomNo, this.rent, this.isPaid, this.remainingAmount);

  static List<User_Rent> paidUser() {
    return [
      User_Rent('Hemant', '21', 25000, true, 0),
      User_Rent('RAvi', '22', 22000, true, 0),
      User_Rent('Rajiv', '22', 20000, true, 0),
      User_Rent('Pankaj', '22', 26000, true, 0),
      User_Rent('Sasi', '22', 18000, true, 0),
      /*  User_Rent('Somya', '22', 12000, true, 0),
      User_Rent('Sashtri', '22', 25000, true, 0),
      User_Rent('Rajiv', '22', 21000, true, 0),*/
    ];
  }

  static List<User_Rent> unPaidUser() {
    return [
      User_Rent('Ashok', '23', 25000, false, 10000),
      User_Rent('Anjali', '25', 22000, false, 5000),
      User_Rent('Ravi', '27', 20000, false, 15000),
      User_Rent('Pankaj', '02', 26000, false, 12000),
      User_Rent('Sasi', '13', 18000, false, 1000),
      User_Rent('Somya', '15', 12000, false, 1200),
      User_Rent('Sashtri', '17', 25000, false, 15000),
      User_Rent('Rajiv', '19', 21000, false, 5000),
    ];
  }
}
