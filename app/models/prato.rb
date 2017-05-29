class Prato < ApplicationRecord
	validates_presence_of :nome_prato, message: "deve ser preenchido"
	validates_presence_of :preco, message: "deve ser preenchido"
	validates_numericality_of :preco, message: "preco deve ser um numero"
	belongs_to :restaurante
	
end
