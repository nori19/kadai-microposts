class Favorite < ApplicationRecord
  # ユーザの紐づけ
  belongs_to :user
  # マイクロポストの紐づけ
  belongs_to :micropost
end
