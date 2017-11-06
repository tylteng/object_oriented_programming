class BankAccount
  def initialize
      @balance = 0
      @interest_rate = 0.02
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance += @balance*@interest_rate
  end
end


my_bank = BankAccount.new
my_bank.deposit(500)
my_bank.withdraw(200)

p my_bank

my_bank.gain_interest

p my_bank
