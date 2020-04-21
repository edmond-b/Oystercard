class Oystercard

MAX_BALANCE = 90
attr_reader :balance

def initialize
  @balance = 0
end

def top_up(amount)
  fail "Max balance reached: #{MAX_BALANCE}" if @balance + amount > MAX_BALANCE
  @balance += amount
end

def deduct(amount)
  @balance -= amount
end

end
