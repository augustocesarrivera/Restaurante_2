class Restaurante < ApplicationRecord
	validates_presence_of :nome, message: "deve ser preenchido"
	validates_uniqueness_of :nome, message: "nome já cadastrado"
	has_many :pratos
	def self.search(search)
	  where("nome LIKE ?", "%#{search}%") 
	end
end
