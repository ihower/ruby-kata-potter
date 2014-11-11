class Cart

  attr_accessor :items
  attr_accessor :total

  def initialize
    self.items = []
    self.total = 0
  end

  def add(item, qty)

    items << { item => qty } if qty.to_i != 0
  end

  def calculate
    self.total = items.size * 100
  end

end
