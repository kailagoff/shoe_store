require 'spec_helper'


describe(Brand) do
  it("will validate the presence of a name") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end
end
