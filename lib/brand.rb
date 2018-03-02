class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:name, {:presence => true,  uniqueness: { case_sensitive: false}, :length => { :maximum => 100 }})
  validates(:price, {:presence => true})
  before_save(:titlecase_title)

# private #specs not working when methods are private

  def titlecase_title
    self.name=(name().titlecase())
  end
end
