class Book
  include Mongoid::Document

  field :name, :type => String
  field :desc, :type => String

  belongs_to :category
  attr_accessible :desc, :name

  validates :name, :desc, :presence => true

  def to_hash
    {self.name.to_sym => self.desc}
  end
end