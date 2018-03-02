require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ("/") do
  @brands = Brand.all()
  @stores = Store.all()
  erb(:index)
end

get ("/store_form") do
  erb(:store_form)
end

post('/stores') do
  title = params.fetch('title')
  store = Store.new({:title => title, :id => nil})
  store.save()
  @stores = Store.all()
  erb(:stores)
end

get('/stores') do
  @stores = Store.all()
  erb(:stores)
end

get('/stores/:id') do
  @store = Store.find(params.fetch("id").to_i())
  @stores = Store.all()
  erb(:store)
end

get('/stores/:id/edit') do
  @store = Store.find(params.fetch("id").to_i())
  @stores = Store.all()
  erb(:store_edit)
end

patch("/stores/:id") do
  title = params.fetch("title")
  @store = Store.find(params.fetch("id").to_i())
  @stores = @store.update({:title => title})
  erb(:index)
end

delete("/stores/:id") do
  @store = Store.find(params.fetch("id").to_i())
  @store.delete()
  @stores = Store.all()
  erb(:stores)
end
