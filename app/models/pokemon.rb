class Pokemon < ApplicationRecord
  has_many :trainers, through: :pokeballs
  has_many :pokeballs
  has_one_attached :photo
end
