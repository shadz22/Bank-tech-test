# frozen_string_literal: true

require_relative 'account'

class Printer
  def print_transactions(statement)
    print_format = ['date || credit || debit || balance']
    statement.reverse_each.map do |transaction|
      individual_transaction = "#{transaction[:time]} ||"\
      "  #{transaction[:credit]} || #{transaction[:debit]}"\
      " || #{transaction[:balance]}"
      print_format.push(individual_transaction)
    end
    puts print_format
  end
end
