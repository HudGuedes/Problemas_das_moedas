value = ARGV[0]
class Coin
  AVALIABLE_COINS = [25,10,5,1]

  def initialize(value)
    @value = value.to_i
  end

  def calculate
    restante = @value
    AVALIABLE_COINS.each do |item|
      total = 0
      while (restante - item) >= 0 do
        restante = restante - item
        total +=1
      end
      puts "#{total} moeda(s) de #{item}" if total > 0
    end
  end
end
Coin.new(value).calculate
