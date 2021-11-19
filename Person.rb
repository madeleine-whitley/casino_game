class Person
  attr_accessor :name, :balance

  def initialize (name, balance)
    @name - name
    @balance - balance 
  end

  def increase_balance(number)
    @balance += number 
  end

  def decrease_balance(number)
    @balance -= number 
  end

end 