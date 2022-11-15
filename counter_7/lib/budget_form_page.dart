class AddBudgetFormPage extends StatefulWidget {
  const AddBudgetFormPage({super.key});

  @override
  State<AddBudgetFormPage> createState() => _AddBudgetFormPageState();
}

class _AddBudgetFormPageState extends State<AddBudgetFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  final _dateController = TextEditingController();
  final _typeController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (picked != null ) {
      _dateController.text = date.toString();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Tambah Budget'),
    ),
    drawer: Drawer(
    child: Column(
    children: [
    // Menambahkan clickable menu
    ListTile(
    title: const Text('Counter'),
    onTap: () {
    // Route menu ke halaman utama
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const MyCounterPage()),
    );
    },
    ),
    ListTile(
    title: const Text('Tambah Budget'),
    onTap: () {
    // Route menu ke halaman form
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const AddBudgetFormPage()),
    );
    },
    ),
    ListTile(
    title: const Text('Data Budget'),
    onTap: () {
    // Route menu ke halaman form
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const DataBudgetPage()),
    );
    },
    ),
    ],
    ),
    ),


  }
}


void addBudget(String nama, String nominal, String tipe, String date) {
  DataBudget.data
      .add(Budget(name: nama, amount: nominal, type: tipe, date: date));
}