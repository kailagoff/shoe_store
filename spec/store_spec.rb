require 'spec_helper'

describe(Store) do
  it("will not save if the field is left blank") do
    store = Store.new({:title => ""})
    expect(store.save()).to(eq(false))
  end
end
