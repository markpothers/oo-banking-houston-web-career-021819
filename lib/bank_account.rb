class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance=1000, status="open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(deposit)
    @balance = @balance + deposit
  end

  def valid?
    if self.status == "open" && @balance > 0
      true
    else
      false
    end
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end

    def close_account
      self.status = "closed"
    end
end
