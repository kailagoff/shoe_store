require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

#Stores

get ("/") do
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
  @available_brands = Brand.all() - @store.brands
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

#brands

get('/brand_form') do
  erb(:brand_form)
end

get('/brands') do
  @brands = Brand.all()
  erb(:brands)
end

get('/stores/:id/brands') do
  @store = Store.find(params.fetch("id").to_i())
  @available_brands = Brand.all() - @store.brands
  @brands = Brand.all()
  erb(:brand)
end

post('/stores/:id/brands') do
  @store = Store.find(params.fetch("id").to_i())
  found_brand = Brand.find(params.fetch("brand_id").to_i)
  @store.brands.push(found_brand)
  @available_brands = Brand.all() - @store.brands
  erb(:brand)
end #add brand button

post('/brands') do
  name = params.fetch('name')
  price = params.fetch('price').to_i
  brand = Brand.create({:name => name, :price => price})
  @brands = Brand.all()
  erb(:brands)
end

get('/brands/:id') do
  @brand = Brand.find(params.fetch("id").to_i())
  @store = Store.all()
  erb(:brand_edit)
end

patch("/brands/:id") do
  name = params.fetch("name")
  @brand = Brand.find(params.fetch("id").to_i())
  @brand.update({:name => name})
  @brands = Brand.all()
  erb(:brands)
end

delete("/brands/:id") do
  @brand = Brand.find(params.fetch("id").to_i())
  @brand.delete()
  @brands = Brand.all()
  erb(:brands)
end
