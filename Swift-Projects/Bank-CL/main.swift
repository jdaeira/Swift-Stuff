import Foundation

var totalBalance = 0.0

var bank = Bank()
bank.welcomeMessage()

var savings = Account("savings", 1000)
var checking = Account("checking", 2000)


var customer = Customer("0001", "John", "da Eira")
print(customer.customerNumber)
print(customer.customerFirstName)
print(customer.customerLastName)
print(customer.customerFullName)

customer.addAccount(savings)
customer.addAccount(checking)

customer.printAccountBalances()

customer.printTotalBalance()

customer.makeDeposit("savings", 2000)
customer.makeWithdrawel("checking", 500)

customer.printAccountBalances()

customer.printTotalBalance()

bank.addCustomer(customer)

print(bank.bankCustomers[0].customerFullName)

var result = bank.searchCustomers("0002")

if result == true {
    print("That customer exists in the bank")
}
else {
    print("That customer does not exist")
}

func bankMenu(_ answer:String) {
    if answer == "1" {
        print("You are entering a new customer")
    }
    else {
        print("You are entering the ATM system")
    }
}

print("Press 1 to add a new customer")
print("Press 2 to enter the ATM system")
print("Please enter your selection: ", terminator: "")
var answer = readLine()

bankMenu(answer!)
