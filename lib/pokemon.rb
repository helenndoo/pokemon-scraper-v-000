class Pokemon

  attr_accessor :id, :name, :type, :db

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.find(num, db)
    data = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten

    self.new(id: data[0], name: data[1], type: data[2], db:db, hp: data[4])
  end

  def alter_hp(new_hp, db)
    db. execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
  end

end
