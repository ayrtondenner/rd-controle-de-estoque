#busca = Users.find_by(:username: "admin")
conta_admin = Account.find_by_username("admin")

if (conta_admin == nil)
  Account.new(:username => "admin", :password => "admin", :name => "admin").save()
end