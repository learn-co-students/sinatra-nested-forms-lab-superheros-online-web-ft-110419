class Team 
  attr_accessor :name, :motto 
  
  def initialize(args={}) 
    args.each{ |k,v| self.send("#{k}=",v) }
  end 
end