class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)

  validates(:name, {:presence => true,  uniqueness: { case_sensitive: false}})
  validates(:price, {:presence => true})
end
