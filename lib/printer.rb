# frozen_string_literal: true
require_relative 'account'

class Printer

  def print_transactions(statement)
    print_header
    statement.reverse_each.map do |trans| 
      puts trans
    end
  end

  private
  def print_header
    puts 'date || credit || debit || balance'
  end
end