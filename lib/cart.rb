class Cart

  attr_accessor :items
  attr_accessor :total

  PRICE = 100
  DISCOUNT = {
    1 => 1,
    2 => 0.95,
    3 => 0.9,
    4 => 0.8,
    5 => 0.75
  }

  def initialize
    self.items = Hash.new(0)
    self.total = 0
  end

  def add(item_name, qty)
    self.items[item_name.to_s] += qty.to_i
  end

  def calculate
    ordered_items = items.to_a.delete_if{ |i| i[1] == 0 }.sort{ |a,b| a[1] <=> a[1] }
    self.total = 0

    while ordered_items.any?
      min_item = ordered_items.shift

      discount_level = 1
      ordered_items.each do |i|
        discount_level += 1
        i[1] = i[1] - min_item[1]
      end

      ordered_items = ordered_items.delete_if{ |i| i[1] == 0 }
      self.total += min_item[1] * discount_level * PRICE * DISCOUNT[discount_level]
    end

    self.total
  end


end
