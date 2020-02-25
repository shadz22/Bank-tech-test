class Account

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement =[]
  end

  def deposit(amount)
    fail "Deposit amount must be a number" unless amount.is_a? Numeric
    fail "Deposit must be a positive number" if amount < 0
    @balance += amount
  end

  def withdraw(amount)
    fail "Withdraw amount must be a number" unless amount.is_a? Numeric
    fail "Withdraw must be a positive number" if amount < 0
    @balance -= amount
  end

end