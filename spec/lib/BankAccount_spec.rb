require "spec_helper"
require "BankAccount"

describe BankAccount do
  describe "#check_balance" do
    it "Check the DEPOSIT" do
      account1=BankAccount.new(1000)
      balance=account1.deposit(600)
      expect(balance).to eq(1600)
    end

    it "Check the WITHDRAW" do
      account1=BankAccount.new(10000)
      balance=account1.withdraw(1000)
      expect(balance).to eq(9000)
    end

    it "Check the TRANSACTION" do
      account1=BankAccount.new(1000)
      account1.withdraw(500)
      account1.deposit(10000)
      account1.deposit(20000)
      account1.withdraw(1000)
      count=account1.numberOfTransactions()
      expect(count).to eq(4)
    end

    it "Check changed NAME" do
       account1=BankAccount.new(1000)
       new_name = account1.changeName("Pac")
       expect(new_name).to eq("Pac")
    end

    end
end