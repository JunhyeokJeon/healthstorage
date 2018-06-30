class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :name
  has_many :give_comments, dependent: :destroy
  has_many :take_comments, dependent: :destroy
  has_many :post_comments, dependent: :destroy
end
