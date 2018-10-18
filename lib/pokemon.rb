class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(attributes)
    attributes.each {|key, value|
    self.send(("#{key}="),value)}
  end

  def self.save
  end


end
