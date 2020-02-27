# frozen_string_literal: true

require 'account.rb'

describe Account do
  subject { described_class.new }
  let(:time) { Time.now.strftime('%d/%m/%Y') }

  it 'has a balance of 0 at initiation' do
    expect(subject.balance).to eq 0
  end

  it 'has a statement' do
    expect(subject.statement).to be_an_instance_of(Array)
  end

  it { is_expected.to respond_to(:deposit).with(1).argument }

  describe '#deposit' do
    it 'increases the balance by the amount deposited' do
      subject.deposit(10)
      expect(subject.balance).to eq 10
    end

    it 'raise an error if deposit amount is not a number' do
      expect { subject.deposit('abcd') }.to raise_error 'Deposit amount must be a number'
    end

    it 'raises an error if the amount is less than the minimum required deposit amount' do
      expect { subject.deposit(-1) }.to raise_error 'Deposit must be a positive number'
    end
  end

  it { is_expected.to respond_to(:withdraw).with(1).argument }

  describe '#withdraw' do
    it 'decreases the balance by the amount withdrawn' do
      subject.deposit(100)
      subject.withdraw(30)
      expect(subject.balance).to eq 70
    end

    it 'raise an error if withdraw amount is not a number' do
      expect { subject.withdraw('abcd') }.to raise_error 'Withdraw amount must be a number'
    end

    it 'raises an error if the amount is a negative number' do
      expect { subject.withdraw(-1) }.to raise_error 'Withdraw must be a positive number'
    end
  end

  describe '#print_statement' do
    it 'prints the transactions after making a deposit' do
      subject.deposit(50)
      expect(subject.print_statement).to be_an_instance_of(Array)
      # eq "date || credit || debit || balance \n #{time} || 50:00 || || 50:00"
    end
  end
end
