class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates(:title, {:presence => true,  uniqueness: { case_sensitive: false}, :length => { :maximum => 100 }})
  before_save(:titlecase_title)

# private #specs not working when methods are private

  def titlecase_title
    self.title=(title().titlecase())
  end
end
