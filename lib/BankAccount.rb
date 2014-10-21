class BankAccount
	
	def initialize(money)
		@count=0
		@balance=money
		@accountNumber=1
		@name="acc"
	end 

	
	def withdraw(wd)
		@balance-=wd
		@count+=1
		return @balance;
	end


	def deposit(dp)
		@balance+=dp
		@count+=1
		return @balance;
		
	end


	def numberOfTransactions()
		return @count;
	end


	def changeName(newName)
		@name=newName
		return @name
	end


end