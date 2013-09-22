class Category
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Tree
  include Mongoid::Tree::Ordering

  field :title, :type => String
  field :desc,  :type => String, :default => ''

  has_many :books, :autosave => true

  has_mongoid_attached_file :img
  attr_accessible :img, :books_attributes, :title, :desc
  accepts_nested_attributes_for :books, :allow_destroy => true

  # def img_with_first_image
  #   # return 'img'
  # end
  # alias_method_chain :img, :first_image

  # def books_attributes=(args)
  #   args.each do |params|
  #     book = Book.new params[1]
  #     book.category_id = self.id
  #     book.save
  #   end
  # end
end



