class Pokemon

  attr_accessor :id, :name, :type, :db

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  def initialize(name, type=nil, id=nil, hp=60)
    @id = id
    @name = name
    @type = type
    @hp = hp
  end

  def self.find(id,db)
    begin
end
