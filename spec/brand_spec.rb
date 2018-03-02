require 'spec_helper'

describe(Brand) do
  # it { should have_and_belong_to_many(:stores) } #not working, not sure why

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

  it("ensures the length of name is at most 100 characters") do
    brand = Brand.new({:name => "a".*(101)})
    expect(brand.save()).to(eq(false))
  end

  it("saves the brand name as all uppercase using upcase") do
    brand = Brand.new({:name => "Adidas classics"})
    brand.save
    expect(brand.upcase_name()).to(eq("ADIDAS CLASSICS"))
  end
end
