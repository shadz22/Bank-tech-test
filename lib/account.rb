# frozen_string_literal: true

class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount)
    raise 'Deposit amount must be a number' unless amount.is_a? Numeric
    raise 'Deposit must be a positive number' if amount <= 0

    @balance += amount
  end

  def withdraw(amount)
    raise 'Withdraw amount must be a number' unless amount.is_a? Numeric
    raise 'Withdraw must be a positive number' if amount <= 0

    @balance -= amount
  end
end
