class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(attributes)
    attributes.each {|key, value|
    self.send(("#{key}="),value)}
  end

  def save(name, type, database_connection)
    database_connection.execute("INSERT INTO cats (name, type) VALUES (?, ?)",name, type)
  end


end
