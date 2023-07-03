class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  
  has_many :reservations, foreign_key: :renter_id, dependent: :destroy
  has_many :planets_reviews, foreign_key: :renter_id, dependent: :destroy
  has_many :planets, foreign_key: :owner_id, dependent: :destroy
  has_one_attached :photo

  validates :first_name, :last_name, presence: true
end
