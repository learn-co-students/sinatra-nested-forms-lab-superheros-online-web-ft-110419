class Superhero
	attr_accessor :name, :power, :bio
	@@superheroes = []
	def initialize(attr_hash)
		attr_hash.each do |attr, value|
			self.send("#{attr}=", value)
		end
		@@superheroes << self
	end

	def self.all
		@@superheroes
	end

	def self.clear
		@@superheroes = []
	end
end