import 'package:billma/models/Bill.dart';

class BillsTestData {

  static Map<String,List<Bill>> bills = {
    'Today':
      [Bill(billerName: "Emcali", billNumber: "55893939", description: "Servicios Publicos", customerName: "Pedro Reyes", value: 154000, dueDate: DateTime.now()),
      Bill(billerName: "Claro", billNumber: "55893239", description: "Celular Hija", customerName: "Pedro Reyes", value: 84000, dueDate: DateTime.now()),
      Bill(billerName: "DirecTV", billNumber: "1231313", description: "TV Apartamento", customerName: "Pedro Reyes", value: 245000, dueDate: DateTime.now(), billStatus: BILL_STATUS.PENDING)],
    'Later this week':
      [Bill(billerName: "Movistar", billNumber: "14545432", description: "Celular Madre", customerName: "Pedro Reyes", value: 78000, dueDate: DateTime.now()),
      Bill(billerName: "BodyTech", billNumber: "143546", description: "Gimnasio", customerName: "Pedro Reyes", value: 90000, dueDate: DateTime.now()),
      Bill(billerName: "ColGas", billNumber: "8565656", description: "Gas Natural", customerName: "Pedro Reyes", value: 7800, dueDate: DateTime.now(),billStatus: BILL_STATUS.PENDING),
      Bill(billerName: "Valdemoro", billNumber: "776454", description: "Admon Apartamento", customerName: "Pedro Reyes", value: 450000, dueDate: DateTime.now())],
    'Next week':
      [Bill(billerName: "SURA", billNumber: "767676", description: "Salud Prepagada Familiar", customerName: "Pedro Reyes", value: 235000, dueDate: DateTime.now()),
      Bill(billerName: "Emcali", billNumber: "55893939", description: "Servicios Publicos", customerName: "Pedro Reyes", value: 154000, dueDate: DateTime.now()),
      Bill(billerName: "Claro", billNumber: "55893239", description: "Celular Hija", customerName: "Pedro Reyes", value: 84000, dueDate: DateTime.now()),
      Bill(billerName: "DirecTV", billNumber: "1231313", description: "TV Apartamento", customerName: "Pedro Reyes", value: 245000, dueDate: DateTime.now())],
    'Later':
      [Bill(billerName: "Movistar", billNumber: "14545432", description: "Celular Madre", customerName: "Pedro Reyes", value: 78000, dueDate: DateTime.now()),
      Bill(billerName: "BodyTech", billNumber: "143546", description: "Gimnasio", customerName: "Pedro Reyes", value: 90000, dueDate: DateTime.now()),
      Bill(billerName: "ColGas", billNumber: "8565656", description: "Gas Natural", customerName: "Pedro Reyes", value: 7800, dueDate: DateTime.now()),
      Bill(billerName: "Valdemoro", billNumber: "776454", description: "Admon Apartamento", customerName: "Pedro Reyes", value: 450000, dueDate: DateTime.now()),
      Bill(billerName: "SURA", billNumber: "767676", description: "Salud Prepagada Familiar", customerName: "Pedro Reyes", value: 235000, dueDate: DateTime.now())],
  };

  static Map<String,String> billerIcons = {
    'Emcali':'Emcali.png',
    'Claro':'Claro.png',
    'DirecTV':'DirecTV.png',
    'Movistar':'Movistar.png',
    'BodyTech':'Bodytech.png',
    'ColGas':'ColGas.png',
    'Valdemoro':'Valdemoro.png',
    'SURA':'SURA.png',
  };

}
