require 'account.rb'

describe Account do
  it 'has a balance of 0 at initiation' do
    expect(subject.balance).to eq 0
  end

  it 'has a statement' do
    expect(subject.statement).to be_an_instance_of(Array)
  end
end