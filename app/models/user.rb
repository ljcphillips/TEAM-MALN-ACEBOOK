# frozen_string_literal: true

# defines the user class
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, uniqueness: true

  has_many :posts
  has_many :messages
  has_many :comments
  acts_as_voter
end
