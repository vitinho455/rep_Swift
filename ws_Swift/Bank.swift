public class Bank {
  private var name : String
  private var agency : Int
  private var account : Int
  private var balance : Double

 public init(name: String, agency: Int, account: Int, balance: Double){

    self.name = name
    self.agency = agency
    self.account = account  
    self.balance = balance

      }
  
  public func getName() -> String {
    return name
  }

  public func setName(_ name: String) {
    self.name = name
  }

  public func getAgency() -> Int {
    return agency
  }

  public func setAgency(_ agency: Int) {
    self.agency = agency
  }

  public func getAccount() -> Int {
    return account
  }

  public func setAccount(_ account: Int) {
    self.account = account
  }

  public func getBalance() -> Double {
    return balance
  }

  public func setBalance(_ balance: Double) {
    self.balance = balance
  }


func deposit(value: Double){
  
    balance += value
  
}

func Sake(value: Double){
    
    balance -= value
}

func transfer(value: Double, account: Int, nameBank: String){
  
    balance -= value

  }

  func extract(){
      print("Name: \(name) \nAgency: \(agency) \nnumber the Account: \(account) \nbalance actual: \(balance)")
  }

  var description: String{
    
  return "Name: \(name) \nAgency: \(agency) \nAccount: \(account) \nBalance: \(balance)"

    
  }    
    
}

  print("Enter the name: ")
  let name = readLine()

  print("Your agency is being generated...")

  let agency = Int.random(in: 1000...9999)

  print("Your account is being generated...")

  let account = Int.random(in: 100000...999999)

  let balance = 0.0

  let bank = Bank(name: name ?? "User", agency: agency, account: account, balance: balance)

  var decision = 0;

  print("\n Welcome \n" )

  repeat{
 
  print("1 - Deposit")
  print("2 - Sake")
  print("3 - Transfer")
  print("4 - Extract")
  print("5 - Exit")

  decision = Int(readLine() ?? "0") ?? 0
    
  switch decision {

  case 1:
      print("Enter the value to deposit: ")
      let value = Double(readLine() ?? "0") ?? 0.0
      bank.deposit(value: value)
      
      print(bank.description)


  case 2: 
      print("Enter the value to Sake: ")
      let value = Double(readLine() ?? "0") ?? 0.0
      bank.Sake(value: value)

      print(bank.description)

  case 3 :
      print("Enter the value to Transfer: ")
      let value = Double(readLine() ?? "0") ?? 0.0

      print("Enter the account: ")
      let account = Int(readLine() ?? "0") ?? 0
    
      print("Enter the name bank: ")
      let nameBank = readLine() ?? "Unknown"
      bank.transfer(value: value, account: account, nameBank: nameBank)

      print(bank.description)

  case 4: 
      bank.extract()

  case 5: 
      break;

  default:
    
    print("Option invalid!")
  }
    
    } while decision != 5