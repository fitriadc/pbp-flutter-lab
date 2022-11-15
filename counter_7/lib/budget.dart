class Budget {
  String name, amount, date,type;

  Budget({
    required this.name,
    required this.amount,
    required this.date,
    required this.type,

  String get getName {
  return name;
  }

  String get getAmount {
  return amount;
  }

  String get getDate {
  return date;
  }

  String get getType {
  return type;
  }
}


class DaftarBudget{
  static List<Budget> daftarBudget = [];
  void addBudget(Budget budget){
    daftarBudget.add(budget);
  }

  Budget get getDaftarBudget {
  return daftarBudget;
  }

  }
