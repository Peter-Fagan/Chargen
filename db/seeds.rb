User.destroy_all

u1 = User.create :name => "Pete", :email => "peter_fagan@hotmail.com", :password => "chicken", :password_confirmation => "chicken"
u2 = User.create :name => "wolf", :email => "wolf@ga.co", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Badger", :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken"

p "User count: #{User.all.count}"
p u1
