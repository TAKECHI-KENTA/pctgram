class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader  #写真投稿機能におけるcarrierwaveの設定で追加
  
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end
