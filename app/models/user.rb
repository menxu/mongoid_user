require 'mongo'

class User
  def self.mongodb_user
    p '----------------------------------------------------'
    db = Mongo::Connection.new.db('blog')
    db.create_collection('users')
    p db.class

    db['users'].remove

    db['users'].insert({"username" => "andy", "password" => "12345"})
    db['users'].insert({"username" => "alien", "password" => "12345"})
    db['users'].insert({"username" => "angel", "password" => "12345"})

    p db['users'].count
    p '----------------------------------------------------'
    return db['users'].find.to_json
  end
end