class User < ApplicationRecord
  validates :name, :dob, :email, :phone_number, :address, presence: true
  validates :email, uniqueness: true
end
