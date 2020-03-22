class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :book_images, dependent: :destroy
  has_many :book_comments, dependent: :destroy

  validates :name, presence: true
  validates :introduction, presence: true

  attachment :profile_image
end