class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
    @pin = 1234
  end
  
  public
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  def withdraw(pin_number, amount)
    if pin_number == @pin
      if amount <= @balance
      	@balance -= amount
      	puts "Withdrew $#{amount}. New balance: $#{@balance}"
      else
        puts "You are withdrawing more than you have in your balance"
      end
    else
      puts pin_error
    end
  end
  def deposit(pin_number, amount)
    if pin_number == @pin
      @balance += amount
      puts "Added $#{amount}. New balance: $#{@balance}"
    else
      puts pin_error
    end
  end

  private
  def pin_error
    return "Access denied: incorrect PIN."
  end 
end


checking_account = Account.new("Shree", 100000)
checking_account.deposit(1234, 345)
checking_account.withdraw(1234, 100)
checking_account.withdraw(1234, 10000000)
checking_account.withdraw(1212, 123)