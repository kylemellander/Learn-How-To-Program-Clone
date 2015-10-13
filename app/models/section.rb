class Section < ActiveRecord::Base
  validates_presence_of :title

  has_many :lessons
end
