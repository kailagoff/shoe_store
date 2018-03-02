require 'spec_helper'


describe(Brand) do
  it("will validate the presence of a name") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end

  it("will validate the presence of price") do
    brand = Brand.new({:price => nil})
    expect(brand.save()).to(eq(false))
  end

  it ("will validate the uniqueness of a name") do
  brand = Brand.new({name: "Eve"})
  brand.save
  brand2 = Brand.new({name: "Eve"})
  expect(brand2.save()).to(eq(false))
end
end
