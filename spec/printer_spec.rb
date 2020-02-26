require 'printer.rb'

describe Printer do
  let(:statement) { double :statement}
  before do
  allow(statement).to receive(:print_transactions)
  end
  
  it { is_expected.to respond_to(:print_transactions).with(1).argument }

  describe '#print_transactions' do
    it 'prints the statement in reverse order' do
      expect(subject.print_transactions(statement)).to be_an_instance_of(Array)
    end
  end
end