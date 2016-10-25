User.destroy_all
Character.destroy_all

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

# r = Race.create :name => "", :description => "", :ability_increases => "", :age => "", :alignment => "", :size => "", :speed => "", :languages => "", :features => ""

r1 = Race.create :name => "Human",
:description => "In the reckonings of most worlds, humans are the youngest of the common races, late to arrive on the world scene and short-lived in comparison to dwarves, elves, and dragons. Perhaps it is because of their shorter lives that they strive to achieve as much as they can in the years they are given. Or maybe they feel they have something to prove to the elder races, and that’s why they build their mighty empires on the foundation of conquest and trade. Whatever drives them, humans are the innovators,the achievers,and the pioneers of the worlds. <br />
With their penchant for migration and conquest, humans are more physically diverse than other common races. There is no typical human. An individual can stand from 5 feet to a little over 6 feet tall and weigh from 125 to 250 pounds. Human skin shades range from nearly black to very pale, and hair colors from black to blond (curly, kinky, or straight); males might sport facial hair that is sparse or thick. A lot of humans have a dash of nonhuman blood, revealing hints of elf, orc,or other lineages. Humans reach adulthood in their late teens and rarely live even a single century.",
:ability_increases => "Str:1,Dex:1,Con:1,Int:1,Wis:1,Cha:1",
:age => "Humans reach adulthood in their late teens and live less than a century.", :alignment => "Humans tend toward no particular alignment. The best and the worst are found among them.",
:size => "Humans vary widely in height and build, from barely 5 feet to well over 6 feet tall. Regardless of your position in that range, your size is Medium.",
:speed => "Your base walking speed is 30 feet.",
:languages => "You can speak, read, and write Common and one extra language of your choice. Humans typically learn the languages of other peoples they deal with, including obscure dialects. They are fond of sprinkling their speech with words borrowed from other tongues: Orc curses, Elvish musical expressions, Dwarvish military phrases, and so on.",
:features => "No additional Features"
r2 = Race.create :name => "High Elf",
:description => "Elves are a magical people of otherworldly grace, living in the world but not entirely part of it. They live in places of ethereal beauty, in the midst of ancient forests or in silvery spires glittering with faerie light, where soft music drifts through the air and gentle fragrances waft on the breeze. Elves love nature and magic, art and artistry, music and poetry, and the good things of the world. <br />
As a high elf, you have a keen mind and a mastery of at least the basics of magic. <br />
With their unearthly grace and fine features, elves appear hauntingly beautiful to humans and members of many other races. They are slightly shorter than humans on average, ranging from well under 5 feet tall to just over 6 feet. They are more slender than humans, weighing only 100 to 145 pounds. Males and females are about the same height, and males are only marginally heavier than females. <br />
The sun elves of Faerun (also called gold elves or sunrise elves) have bronze skin and hair of copper, black, or golden blond. Their eyes are golden, silver, or black. Moon elves (also called silver elves or gray elves) are much paler, with alabaster skin som etim es tinged with blue. They often have hair of silver-white, black, or blue, but various shades of blond, brown, and red are not uncommon. Their eyes are blue or green and flecked with gold.", :ability_increases => "Dex:2,Int:1",
:age => "Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.",
:alignment => "Elves love freedom, variety, and self-expression, so they lean strongly toward the gentler aspects of chaos. They value and protect others’ freedom as well as their own, and they are more often good than not.",
:size => "Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.",
:speed => "Your base walking speed is 30 feet.",
:languages => "You can speak, read, and write Common and Elvish. Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.",
:features => " <br />
-Darkvision. Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray. <br />
-Keen Senses. You have proficiency in the Perception skill.<br />
-Fey Ancestry. You have advantage on saving throws against being charmed, and magic can’t put you to sleep. <br />
-Trance. Elves don’t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is “trance.”) While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep. <br />
-Elf Weapon Training. You have proficiency with the longsword, shortsword, shortbow, and longbow. <br />
-Cantrip. You know one cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it. <br />
-Extra Language. You can speak, read, and write one extra language of your choice."
r3 = Race.create :name => "Wood Elf",
:description => "Elves are a magical people of otherworldly grace, living in the world but not entirely part of it. They live in places of ethereal beauty, in the midst of ancient forests or in silvery spires glittering with faerie light, where soft music drifts through the air and gentle fragrances waft on the breeze. Elves love nature and magic, art and artistry, music and poetry, and the good things of the world. <br />
As a wood elf, you have keen senses and intuition, and your fleet feet carry you quickly and stealthily through your native forests. <br />
With their unearthly grace and fine features, elves appear hauntingly beautiful to humans and members of many other races. They are slightly shorter than humans on average, ranging from well under 5 feet tall to just over 6 feet. They are more slender than humans, weighing only 100 to 145 pounds. Males and females are about the same height, and males are only marginally heavier than females. <br />
Wood elves’ skin tends to be copperish in hue, sometimes with traces of green. Their hair tends toward browns and blacks, but it is occasionally blond or copper-colored. Their eyes are green, brown, or hazel.",
:ability_increases => "Dex:2,Wis:1",
:age => "Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.",
:alignment => "Elves love freedom, variety, and self-expression, so they lean strongly toward the gentler aspects of chaos. They value and protect others’ freedom as well as their own, and they are more often good than not.",
:size => "Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.",
:speed => "Fleet of Foot. Your base walking speed is 35 feet",
:languages => "You can speak, read, and write Common and Elvish. Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.",
:features => " <br />
-Darkvision. Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray. <br />
-Keen Senses. You have proficiency in the Perception skill. <br />
-Fey Ancestry. You have advantage on saving throws against being charmed, and magic can’t put you to sleep. <br />
-Trance. Elves don’t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is “trance.”) While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep. <br />
-Elf Weapon Training. You have proficiency with the longsword, shortsword, shortbow, and longbow. <br />
-Mask ofthe Wild. You can attempt to hide even when you are only lightly obscured by foliage, heavy rain, falling snow, mist, and other natural phenomena."
r4 = Race.create :name => "Hill Dwarf",
:description => "Bold and hardy, dwarves are known as skilled warriors, miners, and workers of stone and metal. Though they stand well under 5 feet tall, dwarves are so broad and compact that they can weigh as much as a human standing nearly two feet taller. Their courage and endurance are also easily a match for any of the larger folk. <br />
Dwarven skin ranges from deep brown to a paler hue tinged with red, but the most common shades are light brown or deep tan, like certain tones of earth. Their hair, worn long but in simple styles, is usually black, gray, or brown, though paler dwarves often have red hair. Male dwarves value their beards highly and groom them carefully. <br />
Dwarves can live to be more than 400 years old, so the oldest living dwarves often remember a very different world. For example, some of the oldest dwarves living in Citadel Felbarr (in the world of the Forgotten Realms) can recall the day, more than three centuries ago, when orcs conquered the fortress and drove them into an exile that lasted over 250 years. This longevity grants them a perspective on the world that shorter-lived races such as humans and halflings lack. <br />
Dwarves are solid and enduring like the mountains they love, weathering the passage of centuries with stoic endurance and little change. They respect the traditions of their clans, tracing their ancestry back to the founding of their most ancient strongholds in the youth of the world, and don't abandon those traditions lightly. Part of those traditions is devotion to the gods of the dwarves, who uphold the dwarven ideals of industrious labor, skill in battle, and devotion to the forge. <br />
Individual dwarves are determined and loyal, true to their word and decisive in action, sometimes to the point of stubbornness. Many dwarves have a strong sense of justice, and they are slow to forget wrongs they have suffered. A wrong done to one dwarf is a wrong done to the dwarf’s entire clan, so what begins as one dwarf’s hunt for vengeance can become a full-blown clan feud. <br/ >
As a hill dwarf, you have keen senses, deep intuition, and remarkable resilience. The gold dwarves of Faerun in their mighty southern kingdom are hill dwarves",
:ability_increases => "Con:2,Wis:1",
:age => "Dwarves mature at the same rate as humans, but they’re considered young until they reach the age of 50. On average, they live about 350 years.",
:alignment => "Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.",
:size => "Dwarves stand between 4 and 5 feet tall and average about 150 pounds. Your size is Medium.",
:speed => "Your base walking speed is 25 feet. Your speed is not reduced by wearing heavy armor.",
:languages => "You can speak, read, and write Common and Dwarvish. Dwarvish is full of hard consonants and guttural sounds, and those characteristics spill over into whatever other language a dwarf might speak.",
:features => " <br />
-Darkvision. Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray. <br />
-Dwarven Resilience. You have advantage on saving throws against poison, and you have resistance against poison damage. <br />
-Dwarven Combat Training. You have proficiency with the battleaxe, handaxe, throwing hammer, and warhammer. <br />
-Tool Proficiency. You gain proficiency with the artisan’s tools of your choice: smith’s tools, brewer’s supplies, or mason’s tools. <br />
-Stonecunning. Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus. <br />
-Dwarven Toughness. Your hit point maximum increases by 1, and it increases by 1 every time you gain a level."
r5 = Race.create :name => "Mountain Dwarf",
:description => "Bold and hardy, dwarves are known as skilled warriors, miners, and workers of stone and metal. Though they stand well under 5 feet tall, dwarves are so broad and compact that they can weigh as much as a human standing nearly two feet taller. Their courage and endurance are also easily a match for any of the larger folk. <br />
Dwarven skin ranges from deep brown to a paler hue tinged with red, but the most common shades are light brown or deep tan, like certain tones of earth. Their hair, worn long but in simple styles, is usually black, gray, or brown, though paler dwarves often have red hair. Male dwarves value their beards highly and groom them carefully. <br />
Dwarves can live to be more than 400 years old, so the oldest living dwarves often remember a very different world. For example, some of the oldest dwarves living in Citadel Felbarr (in the world of the Forgotten Realms) can recall the day, more than three centuries ago, when orcs conquered the fortress and drove them into an exile that lasted over 250 years. This longevity grants them a perspective on the world that shorter-lived races such as humans and halflings lack. <br />
Dwarves are solid and enduring like the mountains they love, weathering the passage of centuries with stoic endurance and little change. They respect the traditions of their clans, tracing their ancestry back to the founding of their most ancient strongholds in the youth of the world, and don't abandon those traditions lightly. Part of those traditions is devotion to the gods of the dwarves, who uphold the dwarven ideals of industrious labor, skill in battle, and devotion to the forge. <br />
Individual dwarves are determined and loyal, true to their word and decisive in action, sometimes to the point of stubbornness. Many dwarves have a strong sense of justice, and they are slow to forget wrongs they have suffered. A wrong done to one dwarf is a wrong done to the dwarf’s entire clan, so what begins as one dwarf’s hunt for vengeance can become a full-blown clan feud. <br/ >
As a mountain dwarf, you're strong and hardy, accustomed to a difficult life in rugged terrain. You’re probably on the tall side (for a dwarf), and tend toward lighter coloration. The shield dwarves of northern Faerun are mountain dwarves.",
:ability_increases => "Str:2,Con:2",
:age => "Dwarves mature at the same rate as humans, but they’re considered young until they reach the age of 50. On average, they live about 350 years.",
:alignment => "Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.",
:size => "Dwarves stand between 4 and 5 feet tall and average about 150 pounds. Your size is Medium.",
:speed => "Your base walking speed is 25 feet. Your speed is not reduced by wearing heavy armor.",
:languages => "You can speak, read, and write Common and Dwarvish. Dwarvish is full of hard consonants and guttural sounds, and those characteristics spill over into whatever other language a dwarf might speak.",
:features => " <br />
-Darkvision. Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray. <br />
-Dwarven Resilience. You have advantage on saving throws against poison, and you have resistance against poison damage. <br />
-Dwarven Combat Training. You have proficiency with the battleaxe, handaxe, throwing hammer, and warhammer. <br />
-Dwarven Armor Training. You have proficiency with light and medium armor.<br />
-Tool Proficiency. You gain proficiency with the artisan’s tools of your choice: smith’s tools, brewer’s supplies, or mason’s tools. <br />
-Stonecunning. Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus."
r6 = Race.create :name => "Lightfoot Halfling",
:description => "The diminutive halflings survive in a world full of larger creatures by avoiding notice or, barring that, avoiding offense. Standing about 3 feet tall, they appear relatively harmless and so have managed to survive for centuries in the shadow of empires and on the edges of wars and political strife. They are inclined to be stout, weighing between 40 and 45 pounds. <br />
Halflings’ skin ranges from tan to pale with a ruddy cast, and their hair is usually brown or sandy brown and wavy. They have brown or hazel eyes. Halfling men often sport long sideburns, but beards are rare among them and mustaches even more so. They like to wear simple, comfortable, and practical clothes, favoring bright colors. <br />
Halfling practicality extends beyond their clothing. They’re concerned with basic needs and simple pleasures and have little use for ostentation. Even the wealthiest ofhalflings keep their treasures locked in a cellar rather than on display for all to see. They have a knack for finding the most straightforward solution to a problem, and have little patience for dithering. <br />
Halflings are an affable and cheerful people. They cherish the bonds of family and friendship as well as the comforts of hearth and home, harboring few dreams of gold or glory. Even adventurers among them usually venture into the world for reasons of community, friendship, wanderlust, or curiosity. They love discovering new things, even simple things, such as an exotic food or an unfamiliar style of clothing. <br />
Halflings are easily moved to pity and hate to see any living thing suffer. They are generous, happily sharing what they have even in lean times. <br />
As a lightfoot halfling, you can easily hide from notice, even using other people as cover. You’re inclined to be affable and get along well with others. In the Forgotten Realms, lightfoot halflings have spread the farthest and thus are the most common variety.
Lightfoots are more prone to wanderlust than other halflings, and often dwell alongside other races or take up a nomadic life.",
:ability_increases => "Dex:2,Cha:1",
:age => "A halfling reaches adulthood at the age of 20 and generally lives into the middle of his or her second century.",
:alignment => "Most halflings are lawful good. As a rule, they are good-hearted and kind, hate to see others in pain, and have no tolerance for oppression. They are also very orderly and traditional, leaning heavily on the support of their community and the comfort of their old ways.",
:size => "Halflings average about 3 feet tall and weigh about 40 pounds. Your size is Small.",
:speed => "Your base walking speed is 25 feet.",
:languages => "You can speak, read, and write Common and Halfling. The Halfling language isn’t secret, but halflings are loath to share it with others. They write very little, so they don’t have a rich body of literature. Their oral tradition, however, is very strong. Almost all halflings speak Common to converse with the people in whose lands they dwell or through which they are traveling.",
:features => " <br />
-Lucky. When you roll a 1 on an attack roll, ability check, or saving throw, you can reroll the die and must use the new roll. <br />
-Brave. You have advantage on saving throws against being frightened. <br />
-Halfling Nimbleness. You can move through the space of any creature that is of a size larger than yours. <br />
-Naturally Stealthy. You can attempt to hide even when you are obscured only by a creature that is at least one size larger than you."
r7 = Race.create :name => "Stout Halfling",
:description => "The diminutive halflings survive in a world full of larger creatures by avoiding notice or, barring that, avoiding offense. Standing about 3 feet tall, they appear relatively harmless and so have managed to survive for centuries in the shadow of empires and on the edges of wars and political strife. They are inclined to be stout, weighing between 40 and 45 pounds. <br />
Halflings’ skin ranges from tan to pale with a ruddy cast, and their hair is usually brown or sandy brown and wavy. They have brown or hazel eyes. Halfling men often sport long sideburns, but beards are rare among them and mustaches even more so. They like to wear simple, comfortable, and practical clothes, favoring bright colors. <br />
Halfling practicality extends beyond their clothing. They’re concerned with basic needs and simple pleasures and have little use for ostentation. Even the wealthiest ofhalflings keep their treasures locked in a cellar rather than on display for all to see. They have a knack for finding the most straightforward solution to a problem, and have little patience for dithering. <br />
Halflings are an affable and cheerful people. They cherish the bonds of family and friendship as well as the comforts of hearth and home, harboring few dreams of gold or glory. Even adventurers among them usually venture into the world for reasons of community, friendship, wanderlust, or curiosity. They love discovering new things, even simple things, such as an exotic food or an unfamiliar style of clothing. <br />
Halflings are easily moved to pity and hate to see any living thing suffer. They are generous, happily sharing what they have even in lean times. <br />
As a stout halfling, you’re hardier than average and have some resistance to poison. Some say that stouts have dwarven blood. In the Forgotten Realms, these halflings are called stronghearts, and they’re most common
in the south.",
:ability_increases => "Dex:2,Con:1",
:age => "A halfling reaches adulthood at the age of 20 and generally lives into the middle of his or her second century.",
:alignment => "Most halflings are lawful good. As a rule, they are good-hearted and kind, hate to see others in pain, and have no tolerance for oppression. They are also very orderly and traditional, leaning heavily on the support of their community and the comfort of their old ways.",
:size => "Halflings average about 3 feet tall and weigh about 40 pounds. Your size is Small.",
:speed => "Your base walking speed is 25 feet.",
:languages => "You can speak, read, and write Common and Halfling. The Halfling language isn’t secret, but halflings are loath to share it with others. They write very little, so they don’t have a rich body of literature. Their oral tradition, however, is very strong. Almost all halflings speak Common to converse with the people in whose lands they dwell or through which they
are traveling.",
:features => " <br />
-Lucky. When you roll a 1 on an attack roll, ability check, or saving throw, you can reroll the die and must use the new roll. <br />
-Brave. You have advantage on saving throws against being frightened. <br />
-Halfling Nimbleness. You can move through the space of any creature that is of a size larger than yours. <br />
-Stout Resilience. You have advantage on saving throws against poison, and you have resistance against poison damage."

Profession.destroy_all

# c = Profession.create :name => "",
# :description => "",
# :hit_dice => "",
# :saving_throw => "",
# :prof_skills => "",
# :start_hit_points => "",
# :start_prof_bonus => "",
# :start_features => "",
# :start_equipment => ""

c1 = Profession.create :name => "Cleric",
:description => "Clerics are intermediaries between the mortal world and the distant planes of the gods. As varied as the gods they serve, clerics strive to embody the handiwork of their deities. No ordinary priest, a cleric is imbued with divine magic. <br />
Divine magic, as the name suggests, is the power of the gods, flowing from them into the world. Clerics are conduits for that power, manifesting it as miraculous effects. The gods don’t grant this power to everyone who seeks it, but only to those chosen to fulfill a high calling. <br />
Harnessing divine magic doesn’t rely on study or training. A cleric might learn formulaic prayers and ancient rites, but the ability to cast cleric spells relies on devotion and an intuitive sense of a deity’s wishes. <br />
Clerics combine the helpful magic of healing and inspiring their allies with spells that harm and hinder foes. They can provoke awe and dread, lay curses of plague or poison, and even call down flames from heaven to consume their enemies. For those evildoers who will benefit most from a mace to the head, clerics depend on their combat training to let them wade into melee with the power of the gods on their side. <br />
Not every acolyte or officiant at a temple or shrine is a cleric. Some priests are called to a simple life of temple service, carrying out their gods’ will through prayer and sacrifice, not by magic and strength of arms. In some cities, priesthood amounts to a political office, viewed as a stepping stone to higher positions of authority and involving no communion with a god at all. True clerics are rare in most hierarchies. <br />
When a cleric takes up an adventuring life, it is usually because his or her god demands it. Pursuing the goals of the gods often involves braving dangers beyond the walls of civilization, smiting evil or seeking holy relics in ancient tombs. Many clerics are also expected to protect their deities’ worshipers, which can mean fighting rampaging orcs, negotiating peace between warring nations, or sealing a portal that would allow a demon prince to enter the world. <br />
Most adventuring clerics maintain some connection to established temples and orders of their faiths. A temple might ask for a cleric’s aid, or a high priest might be in a position to demand it.",
:hit_dice => "d8",
:saving_throw => "Wis, Cha",
:prof_skills => "Choose two from History, Insight, Medicine, Persuasion, and Religion", :start_hit_points => "8",
:start_prof_bonus => "",
:start_features => "Light armor, medium armor, shield proficiencies. All simple weapon proficiencies. <br />
-Spellcasting: As a conduit for divine power, you can cast cleric spells. At 1st level, you know three cantrips of your choice from the cleric spell list.<br />
-Spellcasting Ability: Wisdom is your spellcasting ability for your cleric spells. The power of your spells comes from your devotion to your deity. You use your Wisdom whenever a cleric spell refers to your spellcasting ability. In addition, you use your Wisdom modifier when setting the saving throw DC for a cleric spell you cast and when making an attack roll with one.<br />
Spell save DC = 8 + your proficiency bonus + your Wisdom modifier. <br />
Spell attack modifier = your proficiency bonus + your Wisdom modifier. <br />
-Ritual Casting: You can cast a cleric spell as a ritual if that spell has the ritual tag and you have the spell prepared.
-Spellcasting Focus: You can use a holy symbol as a spellcasting focus for your cleric spells.
-Divine Domain: Choose one domain related to your deity: Knowledge, Life, Light, Nature, Tempest, Trickery, or War. Each domain is detailed at the end of the class description, and each one provides examples of gods associated with it. Your choice grants you domain spells and other features when you choose it at 1st level.<br />
-Domain Spells: Each domain has a list of spells—its domain spells— that you gain at the cleric levels noted in the domain description. Once you gain a domain spell, you always have it prepared, and it doesn’t count against the number of spells you can prepare each day. If you have a domain spell that doesn’t appear on the cleric spell list, the spell is nonetheless a cleric spell for you.", :start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a mace or (b) a warhammer (if proficient) <br />
• (a) scale mail, (b) leather armor, or (c) chain mail (if proficient) <br />
• (a) a light crossbow and 20 bolts or (b) any simple weapon <br />
• (a) a priest’s pack or (b) an explorer’s pack <br />
• A shield and a holy symbol"
c2 = Profession.create :name => "Fighter",
:description => "Fighters learn the basics of all combat styles. Every fighter can swing an axe, fence with a rapier, wield a longsword or a greatsword, use a bow, and even trap foes in a net with some degree of skill. Likewise, a fighter is adept with shields and every form of armor. Beyond that basic degree of familiarity, each fighter specializes in a certain style of combat. Some concentrate on archery, some on fighting with two weapons at once, and some on augmenting their martial skills with magic. This combination of broad general ability and extensive specialization makes fighters superior combatants
on battlefields and in dungeons alike.",
:hit_dice => "d10",
:saving_throw => "Str, Con or Dex",
:prof_skills => "Blacksmith, animal handling",
:start_hit_points => "10",
:start_prof_bonus => "+2",
:start_features => "All armor, shields, simple and martial weapons. <br />
Fighting Style: You adopt a particular style of fighting as your specialty. Choose one of the following options. <br />
-Archery. You gain a +2 bonus to attack rolls you make with ranged weapons. <br />
-Defense. While you are wearing armor, you gain a +1 bonus to AC. <br />
-Dueling. When you are wielding a melee weapon in one hand and no other weapons, you gain a +2 bonus to damage rolls with that weapon. <br />
-Great Weapon Fighting. When you roll a 1 or 2 on a damage die for an attack you make with a melee weapon that you are wielding with two hands, you can reroll the die and must use the new roll, even if the new roll is a 1 or a 2. The weapon must have the two-handed or versatile property for you to gain this benefit. <br />
-Protection. When a creature you can see attacks a target other than you that is within 5 feet of you, you can use your reaction to impose disadvantage on the attack roll. You must be wielding a shield. <br />
-Two-Weapon Fighting. When you engage in two-weapon fighting, you can add your ability modifier to the damage of the second attack. <br />
-Second Wind: You have a limited well of stamina that you can draw on to protect yourself from harm. On your turn, you can use a bonus action to regain hit points equal to 1d10 + your fighter level. Once you use this feature, you must finish a short or long rest before you can use it again.", :start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) chain mail or (b) leather, longbow, and 20 arrows <br />
• (a) a martial weapon and a shield or (b) two martial weapons <br />
• (a) a light crossbow and 20 bolts or (b) two handaxes <br />
• (a) a dungeoneer’s pack or (b) an explorer’s pack"
c3 = Profession.create :name => "Rogue",
:description => "A scoundrel and stealthy warrior who uses stealth and trickery to overcome obstacles and enemies.",
:hit_dice => "d8",
:saving_throw => "Dex, Int",
:prof_skills => "lockpicking, pickpocket",
:start_hit_points => "8",
:start_prof_bonus => "+2",
:start_features => "Light Armor Proficiency. Simple Weapons, Hand crossbows, Longswords, Rapiers, Shortswords Proficiencies. <br />
-Sneak Attack: You know how to strike subtly and exploit a foe’s distraction. Once per turn, you can deal extra damage to one creature you hit with an attack if you have advantage on the attack roll. The attack must use a finesse or a ranged weapon. <br />
-Thieves' Cant: During your rogue training you learned thieves’ cant, a secret mix of dialect, jargon, and code that allows you to hide messages in seemingly normal conversation. Only another creature that knows thieves’ cant understands such messages. It takes four times longer to convey such a message than it does to speak the same idea plainly. In addition, you understand a set of secret signs and symbols used to convey short, simple messages, such as whether an area is dangerous or the territory of a thieves’ guild, whether loot is nearby, or whether the people in an area are easy marks or will provide a safe house for thieves on the run. <br />
-Cunning Action: Starting at your second level, your quick thinking and agility allow you to move and act quickly. You can take a bonus action on each of your turns in combat. This action can be used only to take the Dash, Disengage, or Hide action.", :start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a rapier or (b) a shortsword <br />
• (a) a shortbow and quiver of 20 arrows or (b) a shortsword <br />
• (a) a burglar’s pack, (b) a dungeoneer’s pack, or (c) an explorer’s pack <br />
• Leather armor, two daggers, and thieves’ tools"
c4 = Profession.create :name => "Wizard",
:description => "Wizards are supreme magic-users, defined and united as a class by the spells they cast. Drawing on the subtle weave of magic that permeates the cosmos, wizards cast spells of explosive fire, arcing lightning, subtle deception, and brute-force mind control. Their magic conjures monsters from other planes of existence, glimpses the future, or turns slain foes into zombies. Their mightiest spells change one substance into another, call meteors down from the sky, or open portals to other worlds. <br />
Though the casting of a typical spell requires merely the utterance of a few strange words, fleeting gestures, and sometimes a pinch or clump of exotic materials, these surface components barely hint at the expertise attained after years of apprenticeship and countless hours of study. <br />
Wizards live and die by their spells. Everything else is secondary. They learn new spells as they experiment and grow in experience. They can also learn them from other wizards, from ancient tomes or inscriptions, and from ancient creatures (such as the fey) that are steeped in magic. <br />
Wizards’ lives are seldom mundane. The closest a wizard is likely to come to an ordinary life is working as a sage or lecturer in a library or university, teaching others the secrets of the multiverse. Other wizards sell their services as diviners, serve in military forces, or pursue lives of crime or domination. <br />
But the lure of knowledge and power calls even the most unadventurous wizards out of the safety of their libraries and laboratories and into crumbling ruins and lost cities. Most wizards believe that their counterparts in ancient civilizations knew secrets of magic that have been lost to the ages, and discovering those secrets could unlock the path to a power greater than any magic available in the present age.",
:hit_dice => "d6",
:saving_throw => "Int, Wis",
:prof_skills => "Choose two from Arcana, History, Insight,
Investigation, Medicine, and Religion",
:start_hit_points => "6",
:start_prof_bonus => "+2",
:start_features => "No armor proficiencies. Dagger, dart, sling, quarterstaff, Light crossbow weapon proficiencies. <br />
-Cantrips: At 1st level, you know three cantrips of your choice from the wizard spell list. You learn additional wizard cantrips of your choice at higher levels. <br />
-Spellbook: At 1st level, you have a spellbook containing six 1st-level wizard spells of your choice. <br />
-Spellcasting Ability: Intelligence is your spellcasting ability for your wizard spells, since you learn your spells through dedicated study and memorization. You use your Intelligence whenever a spell refers to your spellcasting ability. <br />
In addition, you use your Intelligence modifier when setting the saving throw DC for a wizard spell you cast and when making an attack roll with one. <br />
Spell save DC = 8 + your proficiency bonus + your Intelligence modifier <br />
Spell attack modifier = your proficiency bonus + your intelligence modifier <br />
-Ritual Casting: You can cast a wizard spell as a ritual if that spell has the ritual tag and you have the spell in your spellbook. You don't need to have the spell prepared. <br />
-Spellcasting Focus: You can use an arcane focus as a spellcasting focus for your wizard spells. <br />
-Arcane Recovery: You have learned to regain some of your magical energy by studying your spellbook. Once per day when you finish a short rest, you can choose expended spell slots to recover. The spell slots can have a combined level that is equal to or less than half your wizard level (rounded up), and none of the slots can be 6th level or higher.
", :start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a quarterstaff or (b) a dagger <br />
• (a) a component pouch or (b) an arcane focus <br />
• (a) a scholar’s pack or (b) an explorer’s pack <br />
• A spellbook"


Background.destroy_all

# b = Background.create :name => "",
# :description => "",
# :background_skills => "",
# :background_languages => "",
# :background_equipment => "",
# :feature => "",
# :characteristics => "",
# :personality_trait => "",
# :ideal => "",
# :bond => "",
# :flaw => ""

b1 = Background.create :name => "Acolyte",
:description => "You have spent your life in the service of a temple to a specific god or pantheon of gods.<br />
You act as an intermediary between the realm of the holy and the mortal world, performing sacred rites and offering sacrifices in order to conduct worshipers into the presence of the divine.<br />
You are not necessarily a cleric - performing sacred rites is not the same thing as channeling divine power.<br />
Choose a god, a pantheon of gods, or some other quasi-divine being and work with your DM to detail the nature of your religious service.<br />
Were you a lesser functionary in a temple, raised from childhood to assist the priests in the sacred rites?<br />
Or were you a high priest who suddenly experienced a call to serve your god in a different way?<br />
Perhaps you were the leader of a small cult outside of any established temple structure, or even an occult group that served a fiendish master that you now deny.",
:background_skills => "Insight, Religion",
:background_languages => "Two of your choice",
:background_equipment => "A holy symbol (a gift to you when you entered the priesthood), a prayer book or prayer wheel, 5 sticks of incense, vestments, a set of common clothes, and a belt pouch containing 15 gp",
:feature => "Shelter of the Faithful.<br />
As an acolyte, you command the respect of those who share your faith, and you can perform the religious ceremonies of your deity.<br />
You and your adventuring companions can expect to receive free healing and care at a temple, shrine, or other established presence of your faith, though you must provide any material components needed for spells.<br />
Those who share your religion will support you (but only you) at a modest lifestyle.
You might also have ties to a specific temple dedicated to your chosen deity or pantheon, and you have a residence there.<br />
This could be the temple where you used to serve, if you remain on good terms with it, or a temple where you have found a new home.<br />
While near your temple, you can call upon the priests for assistance, provided the assistance you ask for is not hazardous and you remain in good standing with your temple.", :characteristics => "Acolytes are shaped by their experience in temples or other religious communities. Their study of the history and tenets of their faith and their relationships to temples, shrines, or hierarchies affect their mannerisms and ideals. Their flaws might be some hidden hypocrisy or heretical idea, or an ideal or bond taken to an extreme.", :personality_trait => "1. I idolize a particular hero of my faith, and constantly refer to that person’s deeds and example. <br />
2. I can find common ground between the fiercest enemies, empathizing with them and always working towards peace. <br />
3. I see omens in every event and action. The gods try to speak to us, we just need to listen. <br />
4. Nothing can shake my optimistic attitude. <br />
5. I quote (or misquote) sacred texts and proverbs in almost every situation. <br />
6. I am tolerant (or intolerant) of other faiths and respect (or condemn) the worship of other gods. <br />
7. I've enjoyed fine food, drink, and high society among my temple’s elite. Rough living grates on me. <br />
8. I’ve spent so long in the temple that I have little practical experience dealing with people in the outside world.",
:ideal => "1. Tradition. The ancient traditions of worship and sacrifice must be preserved and upheld. <br />
2. Charity. I always try to help those in need, no matter what the personal cost. <br />
3. Change. We must help bring about the changes the gods are constantly working in the world. <br />
4. Power. I hope to one day rise to the top of my faith’s religious hierarchy. <br />
5. Faith. I trust that my deity will guide my actions, I have faith that if I work hard, things will go well. <br />
6. Aspiration. I seek to prove myself worthy of my god’s favor by matching my actions against his or her teachings.",
:bond => "1. I would die to recover an ancient relic of my faith that was lost long ago. <br />
2. I will someday get revenge on the corrupt temple hierarchy who branded me a heretic. <br />
3. I owe my life to the priest who took me in when my parents died. <br />
4. Everything I do is for the common people. <br />
5. I will do anything to protect the temple where I served. <br />
6. I seek to preserve a sacred text that my enemies consider heretical and seek to destroy.",
:flaw => "1. I judge others harshly, and myself even more severely. <br />
2. I put too much trust in those who wield power within my temple’s hierarchy. <br />
3. My piety sometimes leads me to blindly trust those that profess faith in my god. <br />
4. I am inflexible in my thinking. <br />
5. I am suspicious of strangers and expect the worst of them. <br />
6. Once I pick a goal, I become obsessed with it to the detriment of everything else in my life."
b2 = Background.create :name => "Charlatan",
:description => "You have always had a way with people.<br />
You know what makes them tick, you can tease out their hearts' desires after a few minutes of conversation, and with a few leading questions you can read them like they were children's books.<br />
It’s a useful talent, and one that you’re perfectly willing to use for your advantage.
You know what people want and you deliver, or rather, you promise to deliver.
Common sense should steer people away from things that sound too good to be true, but common sense seems to be in short supply when you’re around.<br />
The bottle of pink-colored liquid will surely cure that unseemly rash, this ointment—nothing more than a bit of fat with a sprinkle of silver dust—can
restore youth and vigor, and there’s a bridge in the city that just happens to be for sale.<br />
These marvels sound implausible, but you make them sound like the real deal.<br />
Every charlatan has an angle he or she uses in preference to other schemes. <br />
1. I cheat at games of chance. <br />
2. I shave coins or forge documents. <br />
3. I insinuate myself into people’s lives to prey on their weakness and secure their fortunes. <br />
4. I put on new identities like clothes. <br />
5. I run sleight-of-hand cons on street corners. <br />
6. I convince people that worthless junk is worth their hard-earned money.",
:background_skills => "Deception, Sleight of Hand",
:background_languages => "Disguise Kit, Forgery Kit",
:background_equipment => "A set of fine clothes, a disguise kit, tools of the con of your choice (ten stoppered bottles filled with colored liquid, a set of weighted dice, a deck of marked cards, or a signet ring of an imaginary duke), and a belt pouch containing 15 gp", :feature => "False Identity.<br />
You have created a second identity that includes documentation, established acquaintances, and disguises that allow you to assume that persona.<br />
Additionally, you can forge documents including official papers and personal letters, as long as you have seen an example of the kind of document or the handwriting you are trying to copy." ,
:characteristics => "Charlatans are colorful characters who conceal their true selves behind the masks they construct.<br />
They reflect what people want to see, what they want to believe, and how they see the world.<br />
But their true selves are sometimes plagued by an uneasy conscience, an old enemy, or deep-seated trust issues." ,
:personality_trait =>
"1. I fall in and out of love easily, and am always pursuing someone. <br />
2. I have a joke for every occasion, especially occasions where humor is inappropriate. <br />
3. Flattery is my preferred trick for getting what I want. <br />
4. I’m a born gambler who can't resist taking a risk for a potential payoff. <br />
5. I lie about almost everything, even when there’s no good reason to. <br />
6. Sarcasm and insults are my weapons of choice. <br />
7. I keep multiple holy symbols on me and invoke whatever deity might come in useful at any given moment. <br />
8. I pocket anything I see that might have some value.",
:ideal => "1. Independence. I am a free spirit— no one tells me what to do. <br />
2. Fairness. I never target people who can’t afford to lose a few coins. <br />
3. Charity. I distribute the money I acquire to the people who really need it. <br />
4. Creativity. I never run the same con twice. <br />
5. Friendship. Material goods come and go. Bonds of friendship last forever. <br />
6. Aspiration. I’m determined to make something of myself.",
:bond => "1. I fleeced the wrong person and must work to ensure that this individual never crosses paths with me or those I care about. <br />
2. I owe everything to my mentor—a horrible person who’s probably rotting in jail somewhere. <br />
3. Somewhere out there, I have a child who doesn’t know me. I’m making the world better for him or her. <br />
4. I come from a noble family, and one day I’ll reclaim my lands and title from those who stole them from me. <br />
5. A powerful person killed someone I love. Some day soon, I’ll have my revenge. <br />
6. I swindled and ruined a person who didn’t deserve it. I seek to atone for my misdeeds but might never be able to forgive myself." ,
:flaw => "1. I can’t resist a pretty face. <br />
2. I'm always in debt. I spend my ill-gotten gains on decadent luxuries faster than I bring them in. <br />
3. I’m convinced that no one could ever fool me the way I fool others. <br />
4. I’m too greedy for my own good. I can’t resist taking a risk if there’s money involved. <br />
5. I can’t resist swindling people who are more powerful than me. <br />
6. I hate to admit it and will hate myself for it, but I'll run and preserve my own hide if the going gets tough."
b3 = Background.create :name => "Criminal",
:description => "You are an experienced criminal with a history of breaking the law.<br />
You have spent a lot of time among other criminals and still have contacts within the criminal underworld.<br />
You’re far closer than most people to the world of murder, theft, and violence that pervades the underbelly of civilization, and you have survived up to this point by flouting the rules and regulations of society. <br />
Variant: Spy.<br />
Although your capabilities are not much different from those of a burglar or smuggler, you learned and practiced them in a very different context: as an espionage agent.
You might have been an officially sanctioned agent of the crown, or perhaps you sold the secrets you uncovered to the highest bidder.<br />
There are many kinds of criminals, and within a thieves’ guild or similar criminal organization, individual members have particular specialties. Even criminals who operate outside of such organizations have strong preferences for certain kinds of crimes over others. <br />
There are many kinds of criminals, and within a thieves’ guild or similar criminal organization, individual members have particular specialties. Even criminals who operate outside of such organizations have strong preferences for certain kinds of crimes over others. <br />
1. Blackmailer. <br />
2. Burglar. <br />
3. Enforcer. <br />
4. Fence. <br />
5. Highway robber. <br />
6. Hired killer. <br />
7. Pickpocket. <br />
8. Smuggler.",
:background_skills => "Deception, Stealth",
:background_languages => "One type of gaming set, thieves’ tools",
:background_equipment => "A crowbar, a set of dark common clothes including a hood, and a belt pouch containing 15 GP",
:feature => "Criminal contact.<br />
You have a reliable and trustworthy contact who acts as your liaison to a network of other criminals. You know how to get messages to and from your contact, even over great distances; specifically, you know the local messengers, corrupt caravan masters, and seedy sailors who can deliver messages for you.",
:characteristics => "Criminals might seem like villains on the surface, and many of them are villainous to the core. But some have an abundance of endearing, if not redeeming, characteristics. There might be honor among thieves, but criminals rarely show any respect for law or authority.",
:personality_trait => "1. I always have a plan for what to do when things go wrong.<br />
2. I am always calm, no matter what the situation. I never raise my voice or let my emotions control me. <br />
3. The first thing I do in a new place is note the locations of everything valuable or where such things could be hidden. <br />
4. I would rather make a new friend then a new enemy.<br />
5. I am increadibly slow to trust. Those who seem the fairest often have the most to hide. <br />
6. I don't pay attention to the risks in a situation. Never tell me the odds. <br />
7. The best way to get me to do something is to tell me I can't do it. <br />
8. I blow up at the slightest insult.",
:ideal => "1. Honor. I don’t steal from others in the trade. <br />
2. Freedom. Chains are meant to be broken, as are those who would forge them. <br />
3. Charity. I steal from the wealthy so that I can help people in need. <br />
4. Greed. I will do whatever it takes to become wealthy. <br />
5. People. I’m loyal to my friends, not to any ideals, and everyone else can take a trip down the Styx for all I care. <br />
6. Redemption. There’s a spark of good in everyone.",
:bond => "1. I’m trying to pay off an old debt I owe to a generous benefactor. <br />
2. My ill-gotten gains go to support my family. <br />
3. Something important was taken from me, and I aim to steal it back. <br />
4. I will become the greatest thief that ever lived. <br />
5. I’m guilty of a terrible crime. I hope I can redeem myself for it. <br />
6. Someone I loved died because of a mistake I made. That will never happen again.",
:flaw => "1. When I see something valuable, I can’t think about anything but how to steal it. <br />
2. When faced with a choice between money and my friends, I usually choose the money. <br />
3. If there’s a plan, I’ll forget it. If I don’t forget it, I’ll ignore it. <br />
4. I have a “tell” that reveals when I'm lying. <br />
5. I turn tail and run when things look bad. <br />
6. An innocent person is in prison for a crime that I committed. I’m okay with that."
b4 = Background.create :name => "Entertainer", :description => "You thrive in front of an audience. You know how to entrance them, entertain them, and even inspire them. <br />
Your poetics can stir the hearts of those who hear you, awakening grief or joy, laughter or anger. Your music raises their spirits or captures their sorrow. Your dance steps captivate, your humor cuts to the quick. <br />
Whatever techniques you use, your art is your life. <br />
A good entertainer is versatile, spicing up every performance with a variety of different routines. <br />
1. Actor. <br />
2. Dancer. <br />
3. Fire-eater. <br />
4. jester. <br />
5. juggler. <br />
6. Instrumentalist. <br />
7. Poet. <br />
8. Singer. <br />
9. Storyteller. <br />
10. Tumbler.",
:background_skills => "Acrobatics, Performance",
:background_languages => "Proficient in Disguise kit, one type of musical instrument",
:background_equipment => "A musical instrument (one of your choice), the favor of an admirer (love letter, lock of hair, or trinket), a costume, and a belt pouch containing 15 gp",
:feature => "By Popular Demand <br />
You can always find a place to perform, usually in an inn or tavern but possibly with a circus, at a theater, or even in a noble’s court. At such a place, you receive free lodging and food of a modest or comfortable standard (depending on the quality of the establishment), as long as you perform each night. In addition, your performance makes you something of a local figure. When strangers recognize you in a town where you have performed, they typically take a liking to you.",
:characteristics => "Successful entertainers have to be able to capture and hold an audience’s attention, so they tend to have flamboyant or forceful personalities. They’re inclined toward the romantic and often cling to high-minded ideals about the practice of art and the appreciation of beauty.",
:personality_trait => "1. I know a story relevant to almost every situation. <br />
2. Whenever Icome to a new place, Icollect local rumors and spread gossip. <br />
3. I’m a hopeless romantic, always searching for that special someone. <br />
4. Nobody stays angry at me or around me for long, since I can defuse any amount of tension. <br />
5. I love a good insult, even one directed at me. <br />
6. I get bitter if I’m not the center of attention. <br />
7. I’ll settle for nothing less than perfection. <br />
8. I change my mood or my mind as quickly as I change key in a song.",
:ideal => "1. Beauty. When I perform, I make the world better than it was. <br />
2. Tradition. The stories, legends, and songs of the past must never be forgotten, for they teach us who we are. <br />
3. Creativity. The world is in need of new ideas and bold action. <br />
4. Greed. I’m only in it for the money and fame. <br />
5. People. I like seeing the smiles on people’s faces when I perform. That’s all that matters. <br />
6. Honesty. Art should reflect the soul; it should come from within and reveal who we really are.",
:bond => "1. My instrument is my most treasured possession, and it reminds me of someone I love. <br />
2. Someone stole my precious instrument, and someday I’ll get it back. <br />
3. I want to be famous, whatever it takes. <br />
4. I idolize a hero of the old tales and measure my deeds against that person’s. <br />
5. I will do anything to prove myself superior to my hated rival. <br />
6. I would do anything for the other members of my old troupe.",
:flaw => "1. I’ll do anything to win fame and renown. <br />
2. I’m a sucker for a pretty face. <br />
3. A scandal prevents me from ever going home again. That kind of trouble seems to follow me around. <br />
4. I once satirized a noble who still wants my head. It was a mistake that I will likely repeat. <br />
5. I have trouble keeping my true feelings hidden. My sharp tongue lands me in trouble. <br />
6. Despite my best efforts, I am unreliable to my friends."
b5 = Background.create :name => "Folk Hero",
:description => "You com e from a humble social rank, but you are destined for so much more. Already the people of your home village regard you as their champion, and your destiny calls you to stand against the tyrants and monsters that threaten the common folk everywhere. <br />
Defining event. <br />
You previously pursued a simple profession among the peasantry, perhaps as a farmer, miner, servant, shepherd, woodcutter, or gravedigger. But something happened that set you on a different path and marked you for greater things. <br />
1. I stood up to a tyrant’s agents. <br />
2. I saved people during a natural disaster. <br />
3. I stood alone against a terrible monster. <br />
4. I stole from a corrupt merchant to help the poor. <br />
5. I led a militia to fight off an invading army. <br />
6. I broke into a tyrant’s castle and stole weapons to arm the people. <br />
7. I trained the peasantry to use farm implements as weapons against a tyrant’s soldiers. <br />
8. A lord rescinded an unpopular decree after I led a symbolic act of protect against it. <br />
9. A celestial, fey, or similar creature gave me a blessing or revealed my secret origin. <br />
10. Recruited into a lord’s army, I rose to leadership and was commended for my heroism.",
:background_skills => "Animal Handling, Survival",
:background_languages => "Proficient in one type of artisan’s tools, vehicles (land)",
:background_equipment => "A set of artisan’s tools (one of your choice), a shovel, an iron pot, a set of common clothes, and a belt pouch containing 10 gp",
:feature => "Rustic Hospitality. <br />
Since you come from the ranks of the common folk, you fit in among them with ease. You can find a place to hide, rest, or recuperate among other commoners, unless you have shown yourself to be a danger to them. They will shield you from the law or anyone else searching for you, though they will not risk their lives for you.",
:characteristics => "A folk hero is one of the common people, for better or for worse. Most folk heroes look on their humble origins as a virtue, not a shortcoming, and their home communities remain very important to them.",
:personality_trait => "1. I judge people by their actions, not their words. <br />
2. If someone is in trouble, I’m always ready to lend help. <br />
3. When I set my mind to something, I follow through no matter what gets in my way. <br />
4. I have a strong sense of fair play and always try to find the most equitable solution to arguments. <br />
5. I’m confident in my own abilities and do what I can to instill confidence in others. <br />
6. Thinking is for other people. I prefer action. <br />
7. I misuse long words in an attempt to sound smarter. <br />
8. I get bored easily. When am I going to get on with my destiny?",
:ideal => "1. Respect. People deserve to be treated with dignity and respect. <br />
2. Fairness. No one should get preferential treatment before the law, and no one is above the law. <br />
3. Freedom. Tyrants must not be allowed to oppress the people. <br />
4. Might. If I become strong, I can take what I want, what I deserve. <br />
5. Sincerity. There’s no good in pretending to be something I’m not. <br />
6. Destiny. Nothing and no one can steer me away from my higher calling.",
:bond => "1. I have a family, but I have no idea where they are. One day, I hope to see them again. <br />
2. I worked the land, I love the land, and I will protect the land. <br />
3. A proud noble once gave me a horrible beating, and I will take my revenge on any bully I encounter. <br />
4. My tools are symbols of my past life, and I carry them so that I will never forget my roots. <br />
5. I protect those who cannot protect themselves. <br />
6. I wish my childhood sweetheart had come with me to pursue my destiny.",
:flaw => "1. The tyrant who rules my land will stop at nothing to see me killed. <br />
2. I’m convinced of the significance of my destiny, and blind to my shortcomings and the risk of failure. <br />
3. The people who knew me when I was young know my shameful secret, so I can never go home again. <br />
4. I have a weakness for the vices of the city, especially hard drink. <br />
5. Secretly, I believe that things would be better if I were a tyrant lording over the land. <br />
6. I have trouble trusting in my allies."
b6 = Background.create :name => "Guild Artisan",
:description => "You are a member of an artisan’s guild, skilled in a particular field and closely associated with other artisans. You are a well-established part of the mercantile world, freed by talent and wealth from the constraints of a feudal social order. You learned your skills as an apprentice to a master artisan, under the sponsorship of your guild, until you became a master in your own right. <br />
Guilds are generally found in cities large enough to support several artisans practicing the same trade. However, your guild might instead be a loose network of artisans who each work in a different village within a larger realm. Work with your DM to determine the nature of your guild. You can select your guild business from the Guild Business table or roll randomly. <br />
1. Alchemists and apothecaries. <br />
2. Armorers, locksmiths, and finesmiths. <br />
3. Brewers, distillers, and vintners. <br />
4. Calligraphers, scribes, and scriveners. <br />
5. Carpenters, roofers, and plasterers. <br />
6. Cartographers, surveyors, and chart-makers. <br />
7. Cobblers and shoemakers. <br />
8. Cooks and bakers. <br />
9. Glassblowers and glaziers. <br />
10. Jewelers and gemcutters. <br />
11. Leatherworkers, skinners, and tanners. <br />
12. Masons and stonecutters. <br />
13. Painters, limners, and sign-makers. <br />
14. Potters and tile-makers. <br />
15. Shipwrights and sailmakers. <br />
16. Smiths and metal-forgers. <br />
17. Tinkers, pewterers, and casters. <br />
18. Wagon-makers and wheelwrights. <br />
19. Weavers and dyers. <br />
20. Woodcarvers, coopers, and bowyer. <br />
As a member of your guild, you know the skills needed to create finished items from raw materials (reflected in your proficiency with a certain kind of artisan’s tools), as well as the principles of trade and good business practices. The question now is whether you abandon your trade for adventure, or take on the extra effort to weave adventuring and trade together. <br />
Variant: Guild Merchant. <br />
Instead of an artisans’ guild, you might belong to a guild of traders, caravan masters, or shopkeepers. You don’t craft items yourself but earn a living by buying and selling the works of others (or the raw materials artisans need to practice their craft). Your guild might be a large merchant consortium (or family) with interests across the region. <br />
Perhaps you transported goods from one place to another, by ship, wagon, or caravan, or bought them from traveling traders and sold them in your own little shop. In some ways, the traveling merchant’s life lends itself to adventure far more than the life of an artisan. <br />
Rather than proficiency with artisan’s tools, you might be proficient with navigator’s tools or an additional language. And instead of artisan’s tools, you can start with a mule and a cart.",
:background_skills => "Insight, Persuasion, Proficient with one type of artisan’s tools",
:background_languages => "One of your choice",
:background_equipment => "A set of artisan’s tools (one of your choice), a letter of introduction from your guild, a set of traveler’s clothes, and a belt pouch containing 15 gp",
:feature => "Guild Membership. <br />
As an established and respected member of a guild, you can rely on certain benefits that membership provides. Your fellow guild members will provide you with lodging and food if necessary, and pay for your funeral if needed. In some cities and towns, a guildhall offers a central place to meet other members of your profession, which can be a good place to meet potential patrons, allies, or hirelings. <br />
Guilds often wield tremendous political power. If you are accused of a crime, your guild will support you if a good case can be made for your innocence or the crime is justifiable. You can also gain access to powerful political figures through the guild, if you are a member in good standing. Such connections might require the donation of money or magic items to the guild’s coffers. <br />
You must pay dues of 5 gp per month to the guild. If you miss payments, you must make up back dues to remain in the guild’s good graces.",
:characteristics => "Guild artisans are among the most ordinary people in the world—until they set down their tools and take up an adventuring career. They understand the value of hard work and the importance of community, but they’re vulnerable to sins of greed and covetousness.",
:personality_trait => "1. I believe that anything worth doing is worth doing right. I can’t help it — I’m a perfectionist. <br />
2. I’m a snob who looks down on those who can’t appreciate fine art. <br />
3. I always want to know how things work and what makes people tick. <br />
4. I’m full of witty aphorisms and have a proverb for every occasion. <br />
5. I’m rude to people who lack my commitment to hard work and fair play. <br />
6. I like to talk at length about my profession. <br />
7. I don’t part with my money easily and will haggle tirelessly to get the best deal possible. <br />
8. I’m well known for my work, and I want to make sure everyone appreciates it. I'm always taken aback when people haven’t heard of me.",
:ideal => "1. Community. It is the duty of all civilized people to strengthen the bonds of community and the security of civilization. <br />
2. Generosity. My talents were given to me so that I could use them to benefit the world. <br />
3. Freedom. Everyone should be free to pursue his or her own livelihood. <br />
4. Greed. I’m only in it for the money. <br />
5. People. I’m committed to the people I care about, not to ideals. <br />
6. Aspiration. I work hard to be the best there is at my craft.",
:bond => "1. The workshop where I learned my trade is the most important place inthe world to me.
2. I created a great work for someone, and then found them unworthy to receive it. I’m still looking for someone worthy. <br />
3. I owe my guild a great debt for forging me into the person I am today. <br />
4. I pursue wealth to secure someone’s love. <br />
5. One day I will return to my guild and prove that I am the greatest artisan of them all. <br />
6. I will get revenge on the evil forces that destroyed my place of business and ruined my livelihood.",
:flaw => "1. I’ll do anything to get my hands on something rare or priceless. <br />
2. I’m quick to assume that someone is trying to cheat me. <br />
3. No one must ever learn that Ionce stole money from guild coffers. <br />
4. I’ m never satisfied with what I have— I always want more. <br />
5. I would kill to acquire a noble title. <br />
6. I’m horribly jealous of anyone who can outshine my handiwork. Everywhere I go, I’m surrounded by rivals."

b7 = Background.create :name => "Hermit",
:description => "You lived in seclusion—either in a sheltered community such as a monastery, or entirely alone—for a formative part of your life. In your time apart from the clamor of society, you found quiet, solitude, and perhaps some of the answers you were looking for. <br />
Life of Seclusion. <br />
What was the reason for your isolation, and what changed to allow you to end your solitude? You can work with your DM to determine the exact nature of your seclusion, or you can choose or roll on the table below to determine the reason behind your seclusion. <br />
1. I was searching for spiritual enlightenment. <br />
2. I was partaking of communal living in accordance with the dictates of a religious order. <br />
3. I was exiled for a crime I didn’t commit. <br />
4. I retreated from society after a life-altering event. <br />
5. I needed a quiet place to work on my art, literature, music, or manifesto. <br />
6. I needed to commune with nature, farfrom civilization. <br />
7. I was the caretaker of an ancient ruin or relic. <br />
8. I was a pilgrim in search of a person, place, or relic of spiritual significance. <br />
Other Hermits. <br />
This hermit background assumes a contemplative sort of seclusion that allows room for study and prayer. If you want to play a rugged wilderness recluse who lives off the land while shunning the company of other people, look at the outlander background. On the other hand, if you want to go in a more religious direction, the acolyte might be what you’re looking for. Or you could even be a charlatan, posing as a wise and holy person and letting pious fools support you.",
:background_skills => "Medicine, Religion, Herbalism kit",
:background_languages => "One of your choice",
:background_equipment => "A scroll case stuffed full of notes from your studies or prayers, a winter blanket, a set of common clothes, an herbalism kit, and 5 gp",
:feature => "Discovery. <br />
The quiet seclusion of your extended hermitage gave you access to a unique and powerful discovery. <br />
The exact nature of this revelation depends on the nature of your seclusion. It might be a great truth about the cosmos, the deities, the powerful beings of the outer planes, or the forces of nature. It could be a site that no one else has ever seen. <br />
You might have uncovered a fact that has long been forgotten, or unearthed some relic of the past that could rewrite history. It might be information that would be damaging to the people who or consigned you to exile, and hence the reason for your return to society. <br />
Work with your DM to determine the details of your discovery and its impact on the campaign.",
:characteristics => "Some hermits are well suited to a life of seclusion, whereas others chafe against it and long for company. Whether they embrace solitude or long to escape it, the solitary life shapes their attitudes and ideals. A few are driven slightly mad by their years apart from society.",
:personality_trait => "1. I’ve been isolated for so long that I rarely speak, preferring gestures and the occasional grunt. <br />
2. I am utterly serene, even in the face of disaster. <br />
3. The leader of my community had something wise to say on every topic, and I am eager to share that wisdom. <br />
4. I feel tremendous empathy for all who suffer. <br />
5. I’m oblivious to etiquette and social expectations. <br />
6. I connect everything that happens to me to a grand, cosmic plan. <br />
7. I often get lost in my own thoughts and contemplation, becoming oblivious to my surroundings. <br />
8. I am working on a grand philosophical theory and love sharing my ideas.",
:ideal => "1. Greater Good. My gifts are meant to be shared with all, not used for my own benefit. <br />
2. Logic. Emotions must not cloud our sense of what is right and true, or our logical thinking. <br />
3. Free Thinking. Inquiry and curiosity are the pillars of progress. <br />
4. Power. Solitude and contemplation are paths toward mystical or magical power. <br />
5. Live and Let Live. Meddling in the affairs o f others only causes trouble. <br />
6. Self-Knowledge. If you know yourself, there’s nothing left to know.",
:bond => "1. Nothing is more important than the other members of my hermitage, order, or association. <br />
2. I entered seclusion to hide from the ones who might still be hunting me. I must someday confront them. <br />
3. I’m still seeking the enlightenment I pursued in my seclusion, and it still eludes me. <br />
4. I entered seclusion because I loved someone I could not have. <br />
5. Should my discovery come to light, it could bring ruin to the world. <br />
6. My isolation gave me great insight into a great evil that only Ican destroy.",
:flaw => "1. Now that I've returned to the world, I enjoy its delights a little too much. <br />
2. I harbor dark, bloodthirsty thoughts that my isolation and meditation failed to quell. <br />
3. I am dogmatic in my thoughts and philosophy. <br />
4. I let my need to win arguments overshadow friendships and harmony. <br />
5. I’d risk too much to uncover a lost bit of knowledge. <br />
6. I like keeping secrets and won’t share them with anyone."

b8 = Background.create :name => "Noble",
:description => "You understand wealth, power, and privilege. You carry a noble title, and your family owns land, collects taxes, and wields significant political influence. You might be a pampered aristocrat unfamiliar with work or discomfort, a former merchant just elevated
to the nobility, or a disinherited scoundrel with a disproportionate sense of entitlement. Or you could be an honest, hard-working landowner who cares deeply about the people who live and work on your land, keenly aware of your responsibility to them. <br />
Work with your DM to come up with an appropriate title and determine how much authority that title carries. A noble title doesn’t stand on its own—it’s connected to an entire family, and whatever title you hold, you will pass it down to your own children. Not only do you need to determine your noble title, but you should also work with the DM to describe your family and their influence on you. <br />
Is your family old and established, or was your title only recently bestowed? How much influence do they wield, and over what area? What kind of reputation does your family have among the other aristocrats of the region? How do the common people regard them? <br />
What’s your position in the family? Are you the heir to the head of the family? Have you already inherited the title? How do you feel about that responsibility? Or are you so far down the line of inheritance that no one cares what you do, as long as you don’t embarrass the family? How does the head of your family feel about your adventuring career? Are you in your family’s good graces, or shunned by the rest of your family? <br />
Does your family have a coat of arms? An insignia you might wear on a signet ring? Particular colors you wear all the time? An animal you regard as a symbol of your line or even a spiritual member of the family? <br />
These details help establish your family and your title as features of the world of the campaign.",
:background_skills => "History, Persuasion, One type of gaming set",
:background_languages => "One of your choice",
:background_equipment => "A set of fine clothes, a signet ring, a scroll of pedigree, and a purse containing 25 gp",
:feature => "Position of Privilege. <br />
Thanks to your noble birth, people are inclined to think the best of you. You are welcome in high society, and people assume you have the right to be wherever you are. The common folk make every effort to accommodate you and avoid your displeasure, and other people of high birth treat you as a member of the same social sphere. You can secure an audience with a local noble if you need to.",
:characteristics => "Nobles are born and raised to a very different lifestyle than most people ever experience, and their personalities reflect that upbringing. A noble title comes with a plethora of bonds—responsibilities to family, to other nobles (including the sovereign), to the people entrusted to the family’s care, or even to the title itself. But this responsibility is often a good way to undermine a noble.",
:personality_trait => "1. My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world. <br />
2. The common folk love me for my kindness and generosity. <br />
3. No one could doubt by looking at my regal bearing that I am a cut above the unwashed masses. <br />
4. I take great pains to always look my best and follow the latest fashions. <br />
5. I don’t like to get my hands dirty, and Iwon’t be caught dead in unsuitable accommodations. <br />
6. Despite my noble birth, I do not place myself above other folk. We all have the same blood. <br />
7. My favor, once lost, is lost forever. <br />
8. If you do me an injury, I will crush you, ruin your name, and salt your fields.",
:ideal => "1. Respect. Respect is due to me because of my position, but all people regardless of station deserve to be treated with dignity. <br />
2. Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine. <br />
3. Independence. I must prove that I can handle myself without the coddling of my family. <br />
4. Power. If I can attain more power, no one will tell me what to do. <br />
5. Family. Blood runs thicker than water. <br />
6. Noble Obligation. It is my duty to protect and care for the people beneath me.",
:bond => "1. I will face any challenge to win the approval of my family. <br />
2. My house’s alliance with another noble family must be sustained at all costs. <br />
3. Nothing is more important than the other members of my family. <br />
4. I am in love with the heir of a family that my family despises. <br />
5. My loyalty to my sovereign is unwavering. <br />
6. The common folk must see me as a hero of the people.",
:flaw => "1. I secretly believe that everyone is beneath me. <br />
2. I hide a truly scandalous secret that could ruin my family forever. <br />
3. I too often hear veiled insults and threats in every word addressed to me, and I’m quick to anger. <br />
4. I have an insatiable desire for carnal pleasures. <br />
5. In fact, the world does revolve around me. <br />
6. By my words and actions, I often bring shame to my family."

# b = Background.create :name => "",
# :description => "",
# :background_skills => "",
# :background_languages => "",
# :background_equipment => "",
# :feature => "",
# :characteristics => "",
# :personality_trait => "",
# :ideal => "",
# :bond => "",
# :flaw => ""
