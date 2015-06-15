class User < ActiveRecord::Base
  has_many :microposts
  # validates :content, length: { maximum: 140 }, presence: true
    validates :name,  length: {minimum: 8 , maximum: 15},presence: true

end
