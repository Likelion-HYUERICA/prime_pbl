class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
         
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@hanyang.ac.kr\z/, message: "must be a hanyang.ac.kr account" }
end
