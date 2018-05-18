class Pokemon

  attr_accessor :id, :name, :type, :hp, :db

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  def initialize(id:, name:, type:, hp: db:)
    @id = id
    @name = name
    @type = type
    @hp = hp 
    @db = db
  end
end
