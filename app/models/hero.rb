class Hero
  attr_accessor :name, :power,:biography 
  
  def initialize(args={}) 
    args.each{ |k,v| self.send("#{k}=",v) }
  end 
end