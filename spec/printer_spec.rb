require 'printer.rb'

describe Printer do
  it { is_expected.to respond_to(:print_transactions).with(1).argument }
end
