User.destroy_all

u1 = User.create :name => "Pete", :email => "peter_fagan@hotmail.com", :password => "chicken", :password_confirmation => "chicken"
u2 = User.create :name => "wolf", :email => "wolf@ga.co", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Badger", :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken"

p "User count: #{User.all.count}"
p u1

Collection.destroy_all

m1 = Collection.create :user_id => u1.id
m2 = Collection.create :user_id => u2.id
m3 = Collection.create :user_id => u3.id

Race.destroy_all

r1 = Race.create :name => "Human", :description => "human-like being", :ability_increases => "+1 Str, Dex, Con, Int, Wis, Cha", :age => "16-60 years", :alignment => "Any alignment", :size => "Medium", :speed => "30 feet", :languages => "Common", :features => "Adaptable"
r2 = Race.create :name => "Elf", :description => "tall, pointy eared people", :ability_increases => "+2 Dex, +1 Wis", :age => "30-300 years", :alignment => "Any alignment", :size => "Medium", :speed => "30 feet", :languages => "Common and Elvish", :features => "Darkvision, meditation, Elven weapon proficiencies"
r3 = Race.create :name => "Dwarf", :description => "short, beardy people", :ability_increases => "+2 Con, +1 Str", :age => "16-80 years", :alignment => "Any lawfull alignment", :size => "Medium", :speed => "20 feet", :languages => "Common and Dwarven", :features => "Infravision, find traps and Secret doors"

Profession.destroy_all

c1 = Profession.create :name => "Fighter", :description => "hits stuff as hard as they can", :hit_dice => "d10", :saving_throw => "Str, Con", :prof_skills => "Blacksmith, animal handling", :start_hit_points => "10", :start_prof_bonus => "+2", :start_features => "All weapon and armor proficencies, Weapon specilization"
c2 = Profession.create :name => "Wizard", :description => "Think Gandalf...", :hit_dice => "d4", :saving_throw => "Int, Wis", :prof_skills => "Writing, being smart", :start_hit_points => "4", :start_prof_bonus => "+2", :start_features => "simple weapon proficiencies, cast spells"
c3 = Profession.create :name => "Thief", :description => "steals stuff opens stuff, hides", :hit_dice => "d6", :saving_throw => "Dex, Wis", :prof_skills => "lockpicking, pickpocket", :start_hit_points => "6", :start_prof_bonus => "+2", :start_features => "Simple weapon/light armor proficiencies, hide in shadows, backstab"

# b = Background.create :name => "", :description => "", :background_skills => "", :background_languages => "", :background_equipment => "", :feature => "", :characteristics => "",
# :personality_trait => ["", "", "", "", "", "", "", ""].sample, :ideal => ["", "", "", "", "", ""].sample, :bond => ["", "", "", "", "", "" ].sample, :flaw => ["", "", "", "", "", ""].sample

Background.destroy_all

b1 = Background.create :name => "Acolyte", :description => "You have spent your life in the service of a temple to a specific god or pantheon of gods.
You act as an intermediary between the realm of the holy and the mortal world, performing sacred rites and offering sacrifices in order to conduct worshipers into the presence of the divine.
You are not necessarily a cleric - performing sacred rites is not the same thing as channeling divine power.
Choose a god, a pantheon of gods, or some other quasi-divine being from among those listed in appendix B or those specified by your DM, and work with your DM to detail the nature of your religious service.
Were you a lesser functionary in a temple, raised from childhood to assist the priests in the sacred rites?
Or were you a high priest who suddenly experienced a call to serve your god in a different way?
Perhaps you were the leader of a small cult outside of any established temple structure, or even an occult group that served a fiendish master that you now deny.", :background_skills => "Insight, Religion", :background_languages => "Two of your choice", :background_equipment => "A holy symbol (a gift to you when you entered the priesthood), a prayer book or prayer wheel, 5 sticks of incense, vestments, a set of common clothes, and a belt pouch containing 15 gp", :feature => "Shelter of the Faithful.
As an acolyte, you command the respect of those who share your faith, and you can perform the religious ceremonies of your deity.
You and your adventuring companions can expect to receive free healing and care at a temple, shrine, or other established presence of your faith, though you must provide any material components needed for spells.
Those who share your religion will support you (but only you) at a modest lifestyle.
You might also have ties to a specific temple dedicated to your chosen deity or pantheon, and you have a residence there.
This could be the temple where you used to serve, if you remain on good terms with it, or a temple where you have found a new home.
While near your temple, you can call upon the priests for assistance, provided the assistance you ask for is not hazardous and
you remain in good standing with your temple.", :characteristics => "Acolytes are shaped by their experience in temples or other religious communities.
Their study of the history and tenets of their faith and their relationships to temples, shrines, or hierarchies affect their mannerisms and ideals. Their flaws might be some hidden hypocrisy or heretical idea, or an ideal or bond taken to an extreme.",
:personality_trait => ["I idolize a particular hero of my faith, and constantly refer to that person’s deeds and example.", "I can find common ground between the fiercest enemies, empathizing with them and always working towards peace.", "I see omens in every event and action. The gods try to speak to us, we just need to listen.", "Nothing can shake my optimistic attitude.", "I quote (or misquote) sacred texts and proverbs in almost every situation.", "I am tolerant (or intolerant) of other faiths and respect (or condemn) the worship of other gods.", "I've enjoyed fine food, drink, and high society among my temple’s elite. Rough living grates on me.", "I’ve spent so long in the temple that I have little practical experience dealing with people in the outside world."].sample, :ideal => ["Tradition. The ancient traditions of worship and sacrifice must be preserved and upheld.", "Charity. I always try to help those in need, no matter what the personal cost.", "Change. We must help bring about the changes the gods are constantly working in the world.", "Power. I hope to one day rise to the top of my faith’s religious hierarchy.", "Faith. I trust that my deity will guide my actions, I have faith that if I work hard, things will go well.", "Aspiration. I seek to prove myself worthy of my god’s favor by matching my actions against his or her teachings."].sample, :bond => ["I would die to recover an ancient relic of my faith that was lost long ago.", "I will someday get revenge on the corrupt temple hierarchy who branded me a heretic.", "I owe my life to the priest who took me in when my parents died.", "Everything I do is for the common people.", "I will do anything to protect the temple where I served.", "I seek to preserve a sacred text that my enemies consider heretical and seek to destroy." ].sample, :flaw => ["I judge others harshly, and myself even more severely.", "I put too much trust in those who wield power within my temple’s hierarchy.", "My piety sometimes leads me to blindly trust those that profess faith in my god.", "I am inflexible in my thinking.", "I am suspicious of strangers and expect the worst of them.", "Once I pick a goal, I become obsessed with it to the detriment of everything else in my life."].sample
b2 = Background.create :name => "Charlatan", :description => "You have always had a way with people.
You know what makes them tick, you can tease out their hearts' desires after a few minutes of conversation, and with a few leading questions you can read them like they were children's books.
It’s a useful talent, and one that you’re perfectly willing to use for your advantage.
You know what people want and you deliver, or rather, you promise to deliver.
Common sense should steer people away from things that sound too good to be true, but common sense seems to be in short supply when
you’re around.
The bottle of pink-colored liquid will surely cure that unseemly rash, this ointment—nothing more than a bit of fat with a sprinkle of silver dust—can
restore youth and vigor, and there’s a bridge in the city that just happens to be for sale.
These marvels sound implausible, but you make them sound like the real deal.", :background_skills => "Deception, Sleight of Hand", :background_languages => "Disguise Kit, Forgery Kit", :background_equipment => "A set of fine clothes, a disguise kit, tools of the con of your choice (ten stoppered bottles filled with colored liquid, a set of weighted dice, a deck of marked cards, or a signet ring of an imaginary duke), and a belt pouch containing 15 gp", :feature => "Flase Identity.
You have created a second identity that includes documentation, established acquaintances, and disguises that allow you to assume that persona.
Additionally, you can forge documents including official papers and personal letters, as long as you have seen an example of the kind of document or the handwriting you are trying to copy.", :characteristics => "Charlatans are colorful characters who conceal their true selves behind the masks they construct.
They reflect what people want to see, what they want to believe, and how they see the world.
But their true selves are sometimes plagued by an uneasy conscience, an old enemy, or deep-seated trust issues.", :personality_trait => ["I fall in and out of love easily, and am always pursuing someone.", "I have a joke for every occasion, especially occasions where humor is inappropriate.", "Flattery is my preferred trick for getting what I want.", "I’m a born gambler who can't resist taking a risk for a potential payoff.", "I lie about almost everything, even when there’s no good reason to.", "Sarcasm and insults are my weapons of choice.", "I keep multiple holy symbols on me and invoke whatever deity might come in useful at any given moment.", "I pocket anything I see that might have some value."].sample, :ideal => ["Independence. I am a free spirit— no one tells me what to do. ", "Fairness. I never target people who can’t afford to lose a few coins. ", "Charity. I distribute the money I acquire to the people who really need it.", "Creativity. I never run the same con twice.", "Friendship. Material goods come and go. Bonds of friendship last forever.", "Aspiration. I’m determined to make something of myself."].sample, :bond => ["I fleeced the wrong person and must work to ensure that this individual never crosses paths with me or those I care about.", "I owe everything to my mentor—a horrible person who’s probably rotting in jail somewhere.", "Somewhere out there, I have a child who doesn’t know me.
I’m making the world better for him or her.", "I come from a noble family, and one day I’ll reclaim my lands and title from those who stole them from me.", "A powerful person killed someone I love. Some day soon, I’ll have my revenge.", "I swindled and ruined a person who didn’t deserve it. I seek to atone for my misdeeds but might never be able to forgive myself." ].sample, :flaw => ["I can’t resist a pretty face.", "I'm always in debt. I spend my ill-gotten gains on decadent luxuries faster than I bring them in.", "I’m convinced that no one could ever fool me the way I fool others.", "I’m too greedy for my own good. I can’t resist taking a risk if there’s money involved.", "I can’t resist swindling people who are more powerful than me.", "I hate to admit it and will hate myself for it, but I'll run and preserve my own hide if the going gets tough."].sample
