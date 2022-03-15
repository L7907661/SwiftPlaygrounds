// Simple class
class BankAccount: CustomStringConvertible{
  
//        set{
//
//        }
    
    var name: String
    var balance: Double
    
    init(name: String, balance: Double){
        self.name = name
        self.balance = balance
    }
    
    func deposit(_ amount: Double){
        balance += amount
    }
    func withdraw(_ amount: Double){
        balance -= amount
    }
    var description: String {
        get{
            return "\(name): $\(balance)"
        }
    }
}


var daveAccount = BankAccount(name: "Dave", balance: 100.00)
daveAccount.deposit(50)
daveAccount.withdraw(10)
daveAccount.balance

// Subclass

class AtmBankAccount: BankAccount{
    var withdrawalFee: Double
    init(name: String, balance: Double, withdrawalFee: Double){
        self.withdrawalFee = withdrawalFee
        super.init(name: name, balance: balance)
    }
    convenience init(){
        self.init(name: "Anonymous", balance: 0.0, withdrawalFee: 2.0)
    }
    override convenience init(name: String, balance: Double){
        self.init(name: name, balance: balance, withdrawalFee: 2.0)
    }
    override func withdraw(_ amount: Double) {
        balance -= withdrawalFee
        super.withdraw(amount)
    }
    override var description: String {
        return super.description + " Fee: $\(withdrawalFee)"
      
    }
    
}




var bobAccount = AtmBankAccount()
bobAccount.deposit(100)
bobAccount.withdraw(40)

var Laccount = AtmBankAccount(name: "L", balance: 100, withdrawalFee: 1)
Laccount.deposit(10)
Laccount.withdraw(10)


