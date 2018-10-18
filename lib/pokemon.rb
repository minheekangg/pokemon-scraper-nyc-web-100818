class Pokemon 

  def initialize(attributes)
    attributes.each {|key, value|
    self.send(("#{key}="),value)}
  end
  end

  
end
