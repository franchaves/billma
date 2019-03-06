/**
 * Bill class representing a Bill
 * @author: Francisco Chaves
 */
class Bill {
  String id;
  String keyName;
  String description;
  String billNumber;
  double value = 0;
  DateTime issueDate;
  DateTime dueDate;
  String billerName;
  String billerId;
  String customerName;
  BILL_TYPE billType;
  BILL_STATUS billStatus;

  Bill({this.id, this.keyName, this.description, this.billNumber, this.value,
      this.issueDate, this.dueDate, this.billerName, this.billerId,
      this.customerName, this.billType = BILL_TYPE.RECURRING, this.billStatus = BILL_STATUS.APPROVED});

}

enum BILL_TYPE {
  RECURRING,
  ONE_TIME,
}

enum BILL_STATUS {
  APPROVED,
  PAID,
  DELAYED,
  CANCELLED,
  PENDING,
}