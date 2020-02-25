class Account

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement =[]
  end
end