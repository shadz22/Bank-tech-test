require 'account.rb'

describe Account do
  it 'has a balance of 0 at initiation' do
    expect(subject.balance).to eq 0
  end
end