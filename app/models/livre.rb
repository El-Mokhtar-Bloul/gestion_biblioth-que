class Livre < ApplicationRecord


  validates :nom, presence: true
  validates :nombre_de_page, presence: true
  validates :auteur, presence: true




end
