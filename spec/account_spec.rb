require 'account.rb'

describe Account do
  it 'has a balance of 0 at initiation' do
    expect(subject.balance).to eq 0
  end

  it 'has a statement' do
    expect(subject.statement).to be_an_instance_of(Array)
  end

  it {is_expected.to respond_to(:deposit).with(1).argument }

  describe '#deposit' do
    it 'increases the balance by the amount deposited' do
      subject.deposit(10)
      expect(subject.balance).to eq 10
    end

    it 'raise an error if deposit amount is not a number' do
      expect { subject.deposit('abcd')}.to raise_error "Deposit amount must be a number" 
    end
    
    it 'raises an error if the amount is less than the minimum required deposit amount' do
      expect { subject.deposit(-1)}.to raise_error "Deposit must be a positive number"
    end
  end
end