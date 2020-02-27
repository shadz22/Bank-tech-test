# frozen_string_literal: true

require_relative 'printer'

class Account
  attr_reader :balance, :statement, :printer, :transaction

  def initialize(printer = Printer.new)
    @balance = 0
    @statement = []
    @printer = printer
  end

  def deposit(amount)
    raise 'Deposit amount must be a number' unless amount.is_a? Numeric
    raise 'Deposit must be a positive number' if amount <= 0

    make_deposit(amount)
    update_deposit_log(amount)
  end

  def withdraw(amount)
    raise 'Withdraw amount must be a number' unless amount.is_a? Numeric
    raise 'Withdraw must be a positive number' if amount <= 0

    make_withdraw(amount)
    update_withdraw_log(amount)
  end

  def print_statement
    printer.print_transactions(statement)
  end

  private

  def make_deposit(amount)
    @balance += amount
  end

  def make_withdraw(amount)
    @balance -= amount
  end

  def update_deposit_log(amount)
    transaction = {
      time: Time.now.strftime('%d/%m/%Y'),
      credit: (format '%.2f', amount),
      debit: nil,
      balance: (format '%.2f', @balance)
    }
    @statement << transaction
  end

  def update_withdraw_log(amount)
    transaction = {
      time: Time.now.strftime('%d/%m/%Y'),
      credit: nil,
      debit: (format '%.2f', amount),
      balance: (format '%.2f', @balance)
    }
    @statement << transaction
  end
end
