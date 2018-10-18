class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(attributes)
    attributes.each {|key, value|
    self.send(("#{key}="),value)}
  end

  def save
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?);
    SQL
    DB[:conn].execute(sql, self.name, self.type)
    result = DB[:conn].execute("SELECT * FROM tweets;")
    self.id = result.last["id"]
    self
  end


end
