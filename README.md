# Bank Tech Test
This is a ruby program that can be run via irb. It allows the user to deposit or withdraw money from their bank account. They can also view their transaction history in descending order by printing their statement. 
## Specification
### Requirements
* User should be able to interact with the code via IRB
* User can make a Deposits or a withdrawal.
* User can print their Account statement which shows the date, amount and balance.

### User Stories
``` 
As a bank account holder, so that the user can use their money, they need to be able to withdraw money from their account.
```

``` 
As a bank account holder, so that the user can keep their money safe, they need to be able to deposit money into their account.
```

```
As a bank account holder, so that the user can see a history of their transactions, they need to be able to print a statement.
```

### How to run the program
To use this program, clone this repo and install the required gems by using the following commands:
```
git clone https://github.com/shadz22/Bank-tech-test.git
bundle install
```
### How To run the test
```
rspec
```
### How to interact via irb
To see end to end features, within the cloned directory run irb and follow the command below:
```
require './lib/account.rb'
account = Account.new
account.deposit(1000)
account.deposit(2000)
account.withdrawal(500)
account.print_statement
```
The command above should show you the following. The date will be different 
```
date || credit || debit || balance
26/02/2020 || || 500.00 || 2500.00
26/02/2020 || 2000.00 || || 3000.00
26/02/2020 || 1000.00 || || 1000.00
```

