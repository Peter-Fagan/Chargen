User.destroy_all

u1 = User.create :name => "Pete", :email => "peter_fagan@hotmail.com", :password => "chicken", :password_confirmation => "chicken"
u2 = User.create :name => "wolf", :email => "wolf@ga.co", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Badger", :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken"

p "User count: #{User.all.count}"
p u1

Collection.destroy_all

m1 = Collection.create :name => "Pete"
m2 = Collection.create :name => "Wolf"
m3 = Collection.create :name => "Badger"

u1.collections << m1
u2.collections << m2
u3.collections << m3

Race.destroy_all

r1 = Race.create :name => "Human", :description => "human-like being", :ability_increases => "+1 Str, Dex, Con, Int, Wis, Cha", :age => "16-60 years", :alignment => "Any alignment", :size => "Medium", :speed => "30 feet", :languages => "Common", :features => "Adaptable"
r2 = Race.create :name => "Elf", :description => "tall, pointy eared people", :ability_increases => "+2 Dex, +1 Wis", :age => "30-300 years", :alignment => "Any alignment", :size => "Medium", :speed => "30 feet", :languages => "Common and Elvish", :features => "Darkvision, meditation, Elven weapon proficiencies"
r3 = Race.create :name => "Dwarf", :description => "short, beardy people", :ability_increases => "+2 Con, +1 Str", :age => "16-80 years", :alignment => "Any lawfull alignment", :size => "Medium", :speed => "20 feet", :languages => "Common and Dwarven", :features => "Infravision, find traps and Secret doors"

Profession.destroy_all

c1 = Profession.create :name => "Fighter", :description => "hits stuff as hard as they can", :hit_dice => "d10", :saving_throw => "Str, Con", :prof_skills => "Blacksmith, animal handling", :start_hit_points => "10", :start_prof_bonus => "+2", :start_features => "All weapon and armor proficencies, Weapon specilization"
c2 = Profession.create :name => "Wizard", :description => "Think Gandalf...", :hit_dice => "d4", :saving_throw => "Int, Wis", :prof_skills => "Writing, being smart", :start_hit_points => "4", :start_prof_bonus => "+2", :start_features => "simple weapon proficiencies, cast spells"
c3 = Profession.create :name => "Thief", :description => "steals stuff opens stuff, hides", :hit_dice => "d6", :saving_throw => "Dex, Wis", :prof_skills => "lockpicking, pickpocket", :start_hit_points => "6", :start_prof_bonus => "+2", :start_features => "Simple weapon/light armor proficiencies, hide in shadows, backstab"
