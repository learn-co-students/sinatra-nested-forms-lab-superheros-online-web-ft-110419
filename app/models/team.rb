class Team
	attr_accessor :name, :motto, :heroes
	@@teams = []
	def initialize(params)
		params.each do |attr, value|
			self.send("#{attr}=", value)
		end
		@@teams << self
	end

	def self.all
		@@teams 
	end 
end