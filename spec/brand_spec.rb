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

  it("ensures the length of name is at most 100 characters") do
    brand = Brand.new({:name => "a".*(101)})
    expect(brand.save()).to(eq(false))
  end

  it("saves the brand name with a capital letter using titlecase") do
    brand = Brand.new({:name => "adidas"})
    brand.save
    expect(brand.titlecase_title()).to(eq("Adidas"))
  end
end
