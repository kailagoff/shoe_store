require 'spec_helper'

describe(Store) do
  it("will not save if the field is left blank") do
    store = Store.new({:title => ""})
    expect(store.save()).to(eq(false))
  end

  it("will validate the presence of title") do
    store = Store.new({:title => "Shoe Outlet"})
    expect(store.save()).to(eq(false))
  end

  it ("will validate the uniqueness of a title") do
    store = Store.new({title: "Shoe Outlet"})
    store.save
    store2 = Store.new({title: "Shoe Outlet"})
    expect(store2.save()).to(eq(false))
  end

end
