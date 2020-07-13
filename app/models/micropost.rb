class Micropost < ApplicationRecord
  # ユーザの紐づけ
  belongs_to :user
  
  # マイクロポストはカラを許さず、255字以内
  validates :content, presence: true, length: {maximum: 255}
  
  # 複数のユーザとfavoriteに属する
  has_many :users
  has_many :favorites, dependent: :destroy
end
