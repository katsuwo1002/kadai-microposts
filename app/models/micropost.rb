class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  #課題②で追記
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user
end
