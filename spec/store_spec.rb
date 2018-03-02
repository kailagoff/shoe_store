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

  it("ensures the length of title is at most 100 characters") do
    store = Store.new({:title => "a".*(101)})
    expect(store.save()).to(eq(false))
  end

  it("saves the stores title with a capital letter using titlecase") do
    store = Store.new({:title => "shoe outlet"})
    store.save
    expect(store.titlecase_title()).to(eq("Shoe Outlet"))
  end
end
