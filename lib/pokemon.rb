class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(attributes)
    attributes.each {|key, value|
    self.send(("#{key}="),value)}
  end

  def self.save(name, type, database_connection)
      database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
    end

  def self.find(name, type, database_connection)
      database_connection.execute("SELECT * from pokemon where name = (?)",name)
    end


end
