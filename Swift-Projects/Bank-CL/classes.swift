import Foundation


// terminator in the code has the input line stay on the same line as the text
class Bank {

    var bankName = ""
    var bankCustomers:[Customer] = []

    init() {
        self.bankName = "da Eira Bank"
    }

    init(_ bankName:String) {
        self.bankName = bankName
    }

    func addCustomer(_ customer:Customer) {
        bankCustomers.append(customer)
    }

    func searchCustomers(_ customerNumber:String) -> Bool {
        var search = false
        for customer in bankCustomers {
            if customer.customerNumber == customerNumber {
                search = true
            }
        }
        return search
    }

    func welcomeMessage() {
        print("Welcome to \(bankName)")
    }
}

class Account {

    var accountType = ""
    var accountBalance = 0.0

    // Initializer for the Account Class
    init(_ accountType:String, _ accountBalance:Double) {
        self.accountType = accountType
        self.accountBalance = accountBalance
    }

    // Makes a deposit to the account
    func depositMoney(_ amount:Double) {
        accountBalance += amount
    }

    // Makes a withdrawel to the account
    func withdrawMoney(_ amount:Double) {
        accountBalance -= amount
    }

    // Prints the balance to a specific account 
    func printBalance() {
        print("Your \(accountType) balance is $\(convertDouble(accountBalance))")
    }

    // Formats the Double to a String with the correct formatting
    func convertDouble(_ amount:Double) -> String {
        return String(format: "%.2f", amount)
    }
}

class Customer {

    var customerNumber = ""
    var customerFirstName = ""
    var customerLastName = ""
    var customerFullName = ""
    var customerAccounts:[Account] = []
  
    // Initializer for the Customer Class
    init(_ customerNumber:String, _ customerFirstName:String, _ customerLastName:String) {
        self.customerNumber = customerNumber
        self.customerFirstName = customerFirstName
        self.customerLastName = customerLastName
        self.customerFullName = customerFirstName + " " + customerLastName
    }

    // Adds an account to the Array of customerAccounts
    func addAccount(_ accountType:Account) {
        customerAccounts.append(accountType)
    }

    // Formats the Double to a String with the correct formatting
    func convertDouble(_ amount:Double) -> String {
        return String(format: "%.2f", amount)
    }

     // Make a deposit for a specific account
    func makeDeposit(_ accountType:String, _ amount:Double) {
        for account in customerAccounts {
            if account.accountType == accountType {
                account.depositMoney(amount)
                print("You made a deposit of $\(convertDouble(amount)) to your \(accountType) account")
                account.printBalance()
            }
        }
    }

    // Make a withdrawel for a specific account
    func makeWithdrawel(_ accountType:String, _ amount:Double) {
        for account in customerAccounts {
            if account.accountType == accountType {
                account.withdrawMoney(amount)
                print("You made a withdrawel of $\(convertDouble(amount)) to your \(accountType) account")
                account.printBalance()
            }
        }
    }

    // Print out the Total Balance of all accounts
    func printTotalBalance() {
        var totalBalance = 0.0

        for account in customerAccounts {
            totalBalance += account.accountBalance
        }
        print("Your total balance is $\(convertDouble(totalBalance))")
    }

    // Print out the Baances for all accounts
    func printAccountBalances() {
        for account in customerAccounts {
             account.printBalance()
        }
    }
}


