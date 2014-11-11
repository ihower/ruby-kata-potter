require_relative "../../lib/cart"

Before do
  @cart = Cart.new
end

Given /第一集買了 (.*) 本/ do |n|
  @cart.add( :first, n )
end

Given /第二集買了 (.*) 本/ do |n|
  @cart.add( :second, n )
end

Given /第三集買了 (.*) 本/ do |n|
  @cart.add( :third, n )
end

Given /第四集買了 (.*) 本/ do |n|
  @cart.add( :fourth, n )
end

Given /第五集買了 (.*) 本/ do |n|
  @cart.add( :fifth, n )
end

When /結帳/ do
  @cart.calculate
end

Then /價格應為 (.*) 元/ do |price|
  expect(@cart.total).to eq(price.to_i)
end