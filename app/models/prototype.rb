class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  #バリデーションの設定「空でないこと」
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image,presence:true

  has_many :comments,dependent: :destroy

end
