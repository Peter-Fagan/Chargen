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

# r = Race.create :name => "",
# :description => "",
# :ability_increases => "",
# :age => "",
# :alignment => "",
# :size => "",
# :speed => "",
# :languages => "",
# :features => ""

r1 = Race.create :name => "Hill Dwarf",
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

r2 = Race.create :name => "Mountain Dwarf",
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

r3 = Race.create :name => "High Elf",
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

r4 = Race.create :name => "Wood Elf",
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

r5 = Race.create :name => "Lightfoot Halfling",
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

r6 = Race.create :name => "Stout Halfling",
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

r7 = Race.create :name => "Human",
:description => "In the reckonings of most worlds, humans are the youngest of the common races, late to arrive on the world scene and short-lived in comparison to dwarves, elves, and dragons. Perhaps it is because of their shorter lives that they strive to achieve as much as they can in the years they are given. Or maybe they feel they have something to prove to the elder races, and that’s why they build their mighty empires on the foundation of conquest and trade. Whatever drives them, humans are the innovators, the achievers and the pioneers of the worlds. <br />
With their penchant for migration and conquest, humans are more physically diverse than other common races. There is no typical human. An individual can stand from 5 feet to a little over 6 feet tall and weigh from 125 to 250 pounds. Human skin shades range from nearly black to very pale, and hair colors from black to blond (curly, kinky, or straight); males might sport facial hair that is sparse or thick. A lot of humans have a dash of nonhuman blood, revealing hints of elf, orc,or other lineages. Humans reach adulthood in their late teens and rarely live even a single century.",
:ability_increases => "Str:1,Dex:1,Con:1,Int:1,Wis:1,Cha:1",
:age => "Humans reach adulthood in their late teens and live less than a century.", :alignment => "Humans tend toward no particular alignment. The best and the worst are found among them.",
:size => "Humans vary widely in height and build, from barely 5 feet to well over 6 feet tall. Regardless of your position in that range, your size is Medium.",
:speed => "Your base walking speed is 30 feet.",
:languages => "You can speak, read, and write Common and one extra language of your choice. Humans typically learn the languages of other peoples they deal with, including obscure dialects. They are fond of sprinkling their speech with words borrowed from other tongues: Orc curses, Elvish musical expressions, Dwarvish military phrases, and so on.",
:features => "No additional Features"

r8 = Race.create :name => "Dragonborn",
:description => "Born of dragons, as their name proclaims, the dragonborn walk proudly through a world that greets them with fearful incomprehension. Shaped by draconic gods or the dragons themselves, dragonborn originally hatched from dragon eggs as a unique race, combining the best attributes of dragons and humanoids. Some dragonborn are faithful servants to true dragons, others form the ranks of soldiers in great wars, and still others find themselves adrift, with no clear calling in life. <br />
Dragonborn look very much like dragons standing erect in humanoid form, though they lack wings or a tail. The first dragonborn had scales of vibrant hues matching the colors of their dragon kin, but generations of interbreeding have created a more uniform appearance. Their small, fine scales are usually brass or bronze in color, sometimes ranging to scarlet, rust, gold, or copper-green. They are tall and strongly built, often standing close to 6 1/2 feet tall and weighing 300 pounds or more. Their hands and feet are strong, talonlike claws with three fingers and a thumb on each hand. <br />
The blood of a particular type of dragon runs very strong through some dragonborn clans. These dragonborn often boast scales that more closely match those of their dragon ancestor—bright red, green, blue, or white, lustrous black, or gleaming metallic gold, silver, brass, copper, or bronze. <br />
To any dragonborn, the clan is more important than life itself. Dragonborn owe their devotion and respect to their clan above all else, even the gods. Each dragonborn’s conduct reflects on the honor of his or her clan, and bringing dishonor to the clan can result in expulsion and exile. Each dragonborn knows his or her station and duties within the clan, and honor demands maintaining the bounds of that position. <br />
A continual drive for self-improvement reflects the self-sufficiency of the race as a whole. Dragonborn value skill and excellence in all endeavors. They hate to fail, and they push themselves to extreme efforts before they give up on something. A dragonborn holds mastery of a particular skill as a lifetime goal. Members of other races who share the same commitment find it easy to earn the respect of a dragonborn. <br />
Though all dragonborn strive to be self-sufficient, they recognize that help is sometimes needed in difficult situations. But the best source for such help is the clan, and when a clan needs help, it turns to another dragonborn clan before seeking aid from other races— or even from the gods.",
:ability_increases => "Str:2,Cha:1",
:age => "Young dragonborn grow quickly. They walk hours after hatching, attain the size and development of a 10-year-old human child by the age of 3, and reach adulthood by 15. They live to be around 80.",
:alignment => "Dragonborn tend to extremes, making a conscious choice for one side or the other in the cosmic war between good and evil (represented by Bahamut and Tiamat, respectively). Most dragonborn are good, but those who side with Tiamat can be terrible villains.",
:size => "Dragonborn are taller and heavier than humans, standing well over 6 feet tall and averaging almost 250 pounds. Your size is Medium.",
:speed => "Your base walking speed is 30 feet.",
:languages => "You can speak, read, and write Common and Draconic. Draconic is thought to be one of the oldest languages and is often used in the study of magic. The language sounds harsh to most other creatures and includes numerous hard consonants and sibilants.",
:features => "
-Draconic Ancestry. You have draconic ancestry. Choose one type of dragon from the Draconic Ancestry table. Your breath weapon and damage resistance are determined by the dragon type. <br />
-Breath Weapon. You can use your action to exhale destructive energy. Your draconic ancestry determines the size, shape, and damage type of the exhalation. <br />
When you use your breath weapon, each creature in the area of the exhalation must make a saving throw, the type of which is determined by your draconic ancestry. <br />
The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. <br />
A creature takes 2d6 damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level, 4d6 at 11th level, and 5d6 at 16th level. <br />
After you use your breath weapon, you can’t use it again until you complete a short or long rest. <br />
-Damage Resistance. You have resistance to the damage type associated with your draconic ancestry. <br />
Dragon : Damage Type : Breath Weapon <br />
Black : Acid : 5 by 30 ft. line (Dex. save) <br />
Blue : Lightning : 5 by 30 ft. line (Dex. save) <br />
Brass : Fire : 5 by 30 ft. line (Dex. save) <br />
Bronze : Lightning : 5 by 30 ft. line (Dex. save) <br />
Copper : Acid : 5 by 30 ft. line (Dex. save) <br />
Gold : Fire : 15 ft. cone (Dex. save) <br />
Green : Poiso : 15 ft. cone (Con. save) <br />
Red : Fire : 15 ft. cone (Dex. save) <br />
Silver : Cold : 15 ft. cone (Con. save) <br />
White : Cold : 15 ft. cone (Con. save)"

r9 = Race.create :name => "Forest Gnome",
:description => "A constant hum of busy activity pervades the warrens and neighborhoods where gnomes form their close - knit communities. Louder sounds punctuate the hum: a crunch of grinding gears here, a minor explosion there, a yelp of surprise or triumph, and especially bursts of laughter. Gnomes take delight in life, enjoying every moment of invention, exploration, investigation, creation, and play. <br />
A gnome’s energy and enthusiasm for living shines through every inch of his or her tiny body. Gnomes average slightly over 3 feet tall and weigh 40 to 45 pounds. Their tan or brown faces are usually adorned with broad smiles (beneath their prodigious noses), and their bright eyes shine with excitement. Their fair hair has a tendency to stick out in every direction, as if expressing the gnome’s insatiable interest in everything around. <br />
A gnome’s personality is writ large in his or her appearance. A male gnome’s beard, in contrast to his wild hair, is kept carefully trimmed but often styled into curious forks or neat points. A gnome’s clothing, though usually made in modest earth tones, is elaborately decorated with embroidery, embossing, or gleaming jewels. <br />
As far as gnomes are concerned, being alive is a wonderful thing, and they squeeze every ounce of enjoyment out of their three to five centuries of life. Humans might wonder about getting bored over the course of such a long life, and elves take plenty of time to savor the beauties of the world in their long years, but gnomes seem to worry that even with all that time, they can’t get in enough of the things they want to do and see. <br />
Gnomes speak as if they can’t get the thoughts out of their heads fast enough. Even as they offer ideas and opinions on a range of subjects, they still manage to listen carefully to others, adding the appropriate exclamations of surprise and appreciation along the way. <br />
Though gnomes love jokes of all kinds, particularly puns and pranks, they’re just as dedicated to the more serious tasks they undertake. Many gnomes are skilled engineers, alchemists, tinkers, and inventors. They’re willing to make mistakes and laugh at themselves in the process of perfecting what they do, taking bold (sometimes foolhardy) risks and dreaming large. <br />
Gnomes make their homes in hilly, wooded lands. They live underground but get more fresh air than dwarves do, enjoying the natural, living world on the surface whenever they can. Their homes are well hidden by both clever construction and simple illusions. Welcome visitors are quickly ushered into the bright, warm burrows. Those who are not welcome are unlikely to find the burrows in the first place. <br />
Curious and impulsive, gnomes might take up adventuring as a way to see the world or for the love of exploring. As lovers of gems and other fine items, some gnomes take to adventuring as a quick, if dangerous, path to wealth. Regardless of what spurs them to adventure, gnomes who adopt this way of life eke as much enjoyment out of it as they do out of any other activity they undertake, sometimes to the great annoyance of their adventuring companions. <br />
As a forest gnome, you have a natural knack for illusion and inherent quickness and stealth. In the worlds of D&D, forest gnomes are rare and secretive. They gather in hidden communities in sylvan forests, using illusions and trickery to conceal themselves from threats or to mask their escape should they be detected. Forest gnomes tend to be friendly with other good-spirited woodland folk, and they regard elves and good fey as their most important allies. These gnomes also befriend small forest animals and rely on them for information about threats that might prowl their lands.",
:ability_increases => "Int:2,Dex:1",
:age => "Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.",
:alignment => "Gnomes are most often good. Those who tend toward law are sages, engineers, researchers, scholars, investigators, or inventors. Those who tend toward chaos are minstrels, tricksters, wanderers, or fanciful jewelers. Gnomes are good-hearted, and even the tricksters among them are more playful than vicious.",
:size => "Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.",
:speed => "Your base walking speed is 25 feet.",
:languages => "You can speak, read, and write Common and Gnomish. The Gnomish language, which uses the Dwarvish script, is renowned for its technical treatises and its catalogs of knowledge about the natural world.",
:features => "
-Darkvision. Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray. <br />
-Gnome Cunning. You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic. <br />
-Natural Illusionist. You know the minor illusion cantrip. Intelligence is your spellcasting ability for it. <br />
-Speak with Small Beasts. Through sounds and gestures, you can communicate simple ideas with Small or smaller beasts. Forest gnomes love animals and often keep squirrels, badgers, rabbits, moles, woodpeckers, and other creatures as beloved pets."

r10 = Race.create :name => "Rock Gnome",
:description => "A constant hum of busy activity pervades the warrens and neighborhoods where gnomes form their close - knit communities. Louder sounds punctuate the hum: a crunch of grinding gears here, a minor explosion there, a yelp of surprise or triumph, and especially bursts of laughter. Gnomes take delight in life, enjoying every moment of invention, exploration, investigation, creation, and play. <br />
A gnome’s energy and enthusiasm for living shines through every inch of his or her tiny body. Gnomes average slightly over 3 feet tall and weigh 40 to 45 pounds. Their tan or brown faces are usually adorned with broad smiles (beneath their prodigious noses), and their bright eyes shine with excitement. Their fair hair has a tendency to stick out in every direction, as if expressing the gnome’s insatiable interest in everything around. <br />
A gnome’s personality is writ large in his or her appearance. A male gnome’s beard, in contrast to his wild hair, is kept carefully trimmed but often styled into curious forks or neat points. A gnome’s clothing, though usually made in modest earth tones, is elaborately decorated with embroidery, embossing, or gleaming jewels. <br />
As far as gnomes are concerned, being alive is a wonderful thing, and they squeeze every ounce of enjoyment out of their three to five centuries of life. Humans might wonder about getting bored over the course of such a long life, and elves take plenty of time to savor the beauties of the world in their long years, but gnomes seem to worry that even with all that time, they can’t get in enough of the things they want to do and see. <br />
Gnomes speak as if they can’t get the thoughts out of their heads fast enough. Even as they offer ideas and opinions on a range of subjects, they still manage to listen carefully to others, adding the appropriate exclamations of surprise and appreciation along the way. <br />
Though gnomes love jokes of all kinds, particularly puns and pranks, they’re just as dedicated to the more serious tasks they undertake. Many gnomes are skilled engineers, alchemists, tinkers, and inventors. They’re willing to make mistakes and laugh at themselves in the process of perfecting what they do, taking bold (sometimes foolhardy) risks and dreaming large. <br />
Gnomes make their homes in hilly, wooded lands. They live underground but get more fresh air than dwarves do, enjoying the natural, living world on the surface whenever they can. Their homes are well hidden by both clever construction and simple illusions. Welcome visitors are quickly ushered into the bright, warm burrows. Those who are not welcome are unlikely to find the burrows in the first place. <br />
Curious and impulsive, gnomes might take up adventuring as a way to see the world or for the love of exploring. As lovers of gems and other fine items, some gnomes take to adventuring as a quick, if dangerous, path to wealth. Regardless of what spurs them to adventure, gnomes who adopt this way of life eke as much enjoyment out of it as they do out of any other activity they undertake, sometimes to the great annoyance of their adventuring companions. <br />
As a rock gnome, you have a natural inventiveness and hardiness beyond that of other gnomes. Most gnomes in the worlds of D&D are rock gnomes, including the tinker gnomes of the Dragonlance setting.",
:ability_increases => "Int:2,Con:1",
:age => "Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.",
:alignment => "Gnomes are most often good. Those who tend toward law are sages, engineers, researchers, scholars, investigators, or inventors. Those who tend toward chaos are minstrels, tricksters, wanderers, or fanciful jewelers. Gnomes are good-hearted, and even the tricksters among them are more playful than vicious.",
:size => "Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.",
:speed => "Your base walking speed is 25 feet.",
:languages => "You can speak, read, and write Common and Gnomish. The Gnomish language, which uses the Dwarvish script, is renowned for its technical treatises and its catalogs of knowledge about the natural world.",
:features => "
-Darkvision. Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray. <br />
-Gnome Cunning. You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic. <br />
-Artificer’s Lore. Whenever you make an Intelligence (History) check related to magic items, alchemical objects, or technological devices, you can add twice your proficiency bonus, instead of any proficiency bonus you normally apply.
-Tinker. You have proficiency with artisan’s tools (tinker’s tools). Using those tools, you can spend 1 hour and 10 gp worth of materials to construct a Tiny clockwork device (AC 5, 1 hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the materials used to create it. You can have up to three such devices active at a time. <br />
When you create a device, choose one of the following options: <br />
Clockwork Toy.This toy is a clockwork animal, monster, or person, such as a frog, mouse, bird, dragon, or soldier. When placed on the ground, the toy moves 5 feet across the ground on each of your turns in a random direction. It makes noises as appropriate to the creature it represents. <br />
Fire Starter. The device produces a miniature flame, which you can use to light a candle, torch, or campfire. Using the device requires your action. <br />
Music Box. When opened, this music box plays a single song at a moderate volume. The box stops playing when it reaches the song’s end or when it is closed."

r11 = Race.create :name => "Half Elf",
:description => "Walking in two worlds but truly belonging to neither, half-elves combine what some say are the best qualities of their elf and human parents: human curiosity, inventiveness, and ambition tempered by the refined senses, love of nature, and artistic tastes of the elves. <br />
Some half-elves live among humans, set apart by their emotional and physical differences, watching friends and loved ones age while time barely touches them. Others live with the elves, growing restless as they reach adulthood in the timeless elven realms, while their peers continue to live as children. Many half-elves, unable to fit into either society, choose lives of solitary wandering or join with other misfits and outcasts in the adventuring life. <br />
To humans, half-elves look like elves, and to elves, they look human. In height, they’re on par with both parents, though they’re neither as slender as elves nor as broad as humans. They range from under 5 feet to about 6 feet tall, and from 100 to 180 pounds, with men only slightly taller and heavier than women. <br />
Half-elf men do have facial hair, and sometimes grow beards to mask their elven ancestry. Half-elven coloration and features lie somewhere between their human and elf parents, and thus show a variety even more pronounced than that found among either race. They tend to have the eyes of their elven parents. <br />
Half-elves have no lands of their own, though they are welcome in human cities and somewhat less welcome in elven forests. In large cities in regions where elves and humans interact often, half-elves are sometimes numerous enough to form small communities of their own. They enjoy the company of other half-elves, the only people who truly understand what it is to live between these two worlds. <br />
In most parts of the world, though, half-elves are uncommon enough that one might live for years without meeting another. Some half-elves prefer to avoid company altogether, wandering the wilds as trappers, foresters, hunters, or adventurers and visiting civilization only rarely. Like elves, they are driven by the wanderlust that comes of their longevity. Others, in contrast, throw themselves into the thick of society, putting their charisma and social skills to great use in diplomatic roles or as swindlers.",
:ability_increases => "Cha:2",
:age => "Half-elves mature at the same rate humans do and reach adulthood around the age of 20. They live much longer than humans, however, often exceeding 180 years.",
:alignment => "Half-elves share the chaotic bent of their elven heritage. They value both personal freedom and creative expression, demonstrating neither love of leaders nor desire for followers. They chafe at rules, resent others’ demands, and sometimes prove unreliable, or at least unpredictable.",
:size => "Half-elves are about the same size as humans, ranging from 5 to 6 feet tall. Your size is Medium.",
:speed => "Your base walking speed is 30 feet.",
:languages => "You can speak, read, and write Common, Elvish, and one extra language of your choice.",
:features => "
-Darkvision. Thanks to your elf blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray. <br />
-Fey Ancestry. You have advantage on saving throws against being charmed, and magic can’t put you to sleep. <br />
-Skill Versatility. You gain proficiency in two skills of your choice. <br />
-Ability Scores. Choose 2 Ability scores (other than Charisma) to increase by 1"

r12 = Race.create :name => "Half-Orc",
:description => "Whether united under the leadership of a mighty warlock or having fought to a standstill after years of conflict, orc and human tribes sometimes form alliances, joining forces into a larger horde to the terror of civilized lands nearby. When these alliances are sealed by marriages, half-orcs are born. Some half-orcs rise to become proud chiefs of orc tribes, their human blood giving them an edge over their full blooded orc rivals. Some venture into the world to prove their worth among humans and other more civilized races. Many of these become adventurers, achieving greatness for their mighty deeds and notoriety for their barbaric customs and savage fury. <br />
Half-orcs’ grayish pigmentation, sloping foreheads, jutting jaws, prominent teeth, and towering builds make their orcish heritage plain for all to see. Half-orcs stand between 6 and 7 feet tall and usually weigh between 180 and 250 pounds. <br />
Orcs regard battle scars as tokens of pride and ornamental scars as things of beauty. Other scars, though, mark an orc or half-orc as a former slave or a disgraced exile. Any half-orc who has lived among or near orcs has scars, whether they are marks of humiliation or of pride, recounting their past exploits and injuries. Such a half-orc living among humans might display these scars proudly or hide them in shame. <br />
The one eyed god Gruumsh created the orcs, and even those orcs who turn away from his worship can’t fully escape his influence. The same is true of half-orcs, though their human blood moderates the impact of their orcish heritage. Some half-orcs hear the whispers of Gruumsh in their dreams, calling them to unleash the rage that simmers within them. Others feel Gruumsh’s exultation when they join in melee combat and either exult along with him or shiver with fear and loathing. Half-orcs are not evil by nature, but evil does lurk within them, whether they embrace it or rebel against it. <br />
Beyond the rage of Gruumsh, half-orcs feel emotion powerfully. Rage doesn’t just quicken their pulse, it makes their bodies burn. An insult stings like acid, and sadness saps their strength. But they laugh loudly and heartily, and simple bodily pleasures—feasting, drinking, wrestling, drumming, and wild dancing fill their hearts with joy. They tend to be short tempered and sometimes sullen, more inclined to action than contemplation and to fighting than arguing. The most accomplished half-orcs are those with enough self-control to get by in a civilized land. <br />
Half-orcs most often live among orcs. Of the other races, humans are most likely to accept half-orcs, and half-orcs almost always live in human lands when not living among orc tribes. Whether proving themselves among rough barbarian tribes or scrabbling to survive in the slums of larger cities, half-orcs get by on their physical might, their endurance, and the sheer determination they inherit from their human ancestry.",
:ability_increases => "Str:2,Con:1",
:age => "Half-orcs mature a little faster than humans, reaching adulthood around age 14. They age noticeably faster and rarely live longer than 75 years.",
:alignment => "Half-orcs inherit a tendency toward chaos from their orc parents and are not strongly inclined toward good. Half-orcs raised among ores and willing to live out their lives among them are usually evil.",
:size => "Half-orcs are somewhat larger and bulkier than humans, and they range from 5 to well over 6 feet tall. Your size is Medium.",
:speed => "Your base walking speed is 30 feet.",
:languages => "You can speak, read, and write Common and Orc. Orc is a harsh, grating language with hard consonants. It has no script of its own but is written in the Dwarvish script.",
:features => "
-Darkvision. Thanks to your orc blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray. <br />
-Menacing. You gain proficiency in the Intimidation skill. <br />
-Relentless Endurance. When you are reduced to 0 hit points but not killed outright, you can drop to 1 hit point instead. You can’t use this feature again until you finish a long rest. <br />
-Savage Attacks. When you score a critical hit with a melee weapon attack, you can roll one of the weapon’s damage dice one additional time and add it to the extra damage of the critical hit."

r13 = Race.create :name => "Tiefling",
:description => "To be greeted with stares and whispers, to suffer violence and insult on the street, to see mistrust and fear in every eye: this is the lot of the tiefling. And to twist the knife, tieflings know that this is because a pact struck generations ago infused the essence of Asmodeus—overlord of the Nine Hells—into their bloodline. Their appearance and their nature are not their fault but the result of an ancient sin, for which they and their children and their children’s children will always be held accountable. <br />
Tieflings are derived from human bloodlines, and in the broadest possible sense, they still look human. However, their infernal heritage has left a clear imprint on their appearance. Tieflings have large horns that take any of a variety of shapes: some have curling horns like a ram, others have straight and tall horns like a gazelle’s, and some spiral upward like an antelopes’ horns. They have thick tails, four to five feet long, which lash or coil around their legs when they get upset or nervous. Their canine teeth are sharply pointed, and their eyes are solid colors—black, red, white, silver, or gold—with no visible sclera or pupil. Their skin tones cover the full range of human coloration, but also include various shades of red. Their hair, cascading down from behind their horns, is usually dark, from black or brown to dark red, blue, or purple. <br />
Tieflings subsist in small minorities found mostly in human cities or towns, often in the roughest quarters of those places, where they grow up to be swindlers, thieves, or crime lords. Sometimes they live among other minority populations in enclaves where they are treated with more respect. <br />
Lacking a homeland, tieflings know that they have to make their own way in the world and that they have to be strong to survive. They are not quick to trust anyone who claims to be a friend, but when a tiefling’s companions demonstrate that they trust him or her, the tiefling learns to extend the same trust to them. And once a tiefling gives someone loyalty, the tiefling is a firm friend or ally for life.",
:ability_increases => "Int:1,Cha:2",
:age => "Tieflings mature at the same rate as humans but
live a few years longer.",
:alignment => "Tieflings might not have an innate tendency toward evil, but many of them end up there. Evil or not, an independent nature inclines many tieflings toward a chaotic alignment.",
:size => "Tieflings are about the same size and build as humans. Your size is Medium.",
:speed => "Your base walking speed is 30 feet.",
:languages => "You can speak, read, and write Common and Infernal.",
:features => "
-Darkvision. Thanks to your infernal heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray. <br />
-Hellish Resistance. You have resistance to fire damage. <br />
-Infernal Legacy. You know the thaumaturgy cantrip. Once you reach 3rd level, you can cast the hellish rebuke spell once per day as a 2nd-level spell. Once you reach 5th level, you can also cast the darkness spell once per day. Charisma is your spellcasting ability for these spells."


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

c1 = Profession.create :name => "Barbarian",
:description => "People of towns and cities take pride in how their civilized ways set them apart from animals, as if denying one’s own nature was a mark of superiority. To a barbarian, though, civilization is no virtue, but a sign of weakness. The strong embrace their animal nature- keen instincts, primal physicality, and ferocious rage. Barbarians are uncomfortable when hedged in by walls and crowds. They thrive in the wilds of their homelands: the tundra, jungle, or grasslands where their tribes live and hunt. <br />
Barbarians come alive in the chaos of combat. They can enter a berserk state where rage takes over, giving them superhuman strength and resilience. A barbarian can draw on this reservoir of fury only a few times without resting, but those few rages are usually sufficient to defeat whatever threats arise. <br />
Not every member of the tribes deemed “barbarians” by scions of civilized society has the barbarian class. A true barbarian among these people is as uncommon as a skilled fighter in a town, and he or she plays a similar role as a protector of the people and a leader in times of war. Life in the wild places of the world is fraught with peril: rival tribes, deadly weather, and terrifying monsters. Barbarians charge headlong into that danger so that their people don’t have to. <br />
Their courage in the face of danger makes barbarians perfectly suited for adventuring. Wandering is often a way of life for their native tribes, and the rootless life of the adventurer is little hardship for a barbarian. Som e barbarians miss the close-knit family structures of the tribe, but eventually find them replaced by the bonds formed among the members of their adventuring parties.",
:hit_dice => "d12",
:saving_throw => "Strength, Constitution",
:prof_skills => "Choose two from Animal Handling, Athletics, Intimidation, Nature, Perception, and Survival",
:start_hit_points => "12",
:start_prof_bonus => "+2",
:start_features => "Light armor, medium armor, shield Proficiencies. All Simple weapons and martial weapon proficiencies. <br />
- Rage: In battle, you fight with primal ferocity. On your turn, you can enter a rage as a bonus action. <br />
While raging, you gain the following benefits if you aren’t wearing heavy armor: <br />
• You have advantage on Strength checks and Strength saving throws. <br />
• When you make a melee weapon attack using Strength, you gain a bonus to the damage roll that increases as you gain levels as a barbarian. (+2)<br />
• You have resistance to bludgeoning, piercing, and slashing damage. <br />
If you are able to cast spells, you can’t cast them or concentrate on them while raging. <br />
Your rage lasts for 1 minute. It ends early if you are knocked unconscious or if your turn ends and you haven’t attacked a hostile creature since your last turn or taken damage since then. You can also end your rage on your turn as a bonus action. <br />
Once you have raged the number of times shown for your barbarian level in the Rages column of the Barbarian table, you must finish a long rest before you can rage again. (2) <br />
- Unarmored Defense: While you are not wearing any armor, your Armor Class equals 10 + your Dexterity modifier + your Constitution modifier. You can use a shield and still gain this benefit.",
:start_equipment => "You start with the following equipment, in addition to the equipment granted by your background:
• (a) a greataxe or (b) any martial melee weapon <br />
• (a) two handaxes or (b) any simple weapon <br />
• An explorer’s pack and four javelins"

c2 = Profession.create :name => "Bard",
:description => "In the worlds of D&D, words and music are not just vibrations of air, but vocalizations with power all their own. The bard is a master of song, speech, and the magic they contain. Bards say that the multiverse was spoken into existence, that the words of the gods gave it shape, and that echoes of these primordial Words of Creation still resound throughout the cosmos. The music of bards is an attempt to snatch and harness those echoes, subtly woven into their spells and powers. <br />
The greatest strength of bards is their sheer versatility. Many bards prefer to stick to the sidelines in combat, using their magic to inspire their allies and hinder their foes from a distance. But bards are capable of defending themselves in melee if necessary, using their magic to bolster their swords and armor. Their spells lean toward charms and illusions rather than blatantly destructive spells. <br />
They have a wide-ranging knowledge of many subjects and a natural aptitude that lets them do almost anything well. Bards become masters of the talents they set their minds to perfecting, from musical performance to esoteric knowledge. <br />
True bards are not common in the world. Not every minstrel singing in a tavern or jester cavorting in a royal court is a bard. Discovering the magic hidden in music requires hard study and some measure of natural talent that most troubadours and jongleurs lack. It can be hard to spot the difference between these performers and true bards, though. <br />
A bard’s life is spent wandering across the land gathering lore, telling stories, and living on the gratitude of audiences, much like any other entertainer. But a depth of knowledge, a level of musical skill, and a touch of magic set bards apart from their fellows. <br />
Only rarely do bards settle in one place for long, and their natural desire to travel—to find new tales to tell, new skills to learn, and new discoveries beyond the horizon—makes an adventuring career a natural calling. <br />
Every adventure is an opportunity to learn, practice a variety of skills, enter long-forgotten tombs, discover lost works of magic, decipher old tomes, travel to strange places, or encounter exotic creatures. Bards love to accompany heroes to witness their deeds firsthand. A bard who can tell an awe-inspiring story from personal experience earns renown among other bards. Indeed, after telling so many stories about heroes accomplishing mighty deeds, many bards take these themes to heart and assume heroic roles themselves.",
:hit_dice => "d8",
:saving_throw => "Dexterity, Charisma",
:prof_skills => "Choose any three",
:start_hit_points => "8",
:start_prof_bonus => "+2",
:start_features => "Light armor proficiency. Simple weapons, hand crossbows, longswords, rapiers, shortswords proficiencies. <br />
-Spellcasting: You have learned to untangle and reshape the fabric of reality in harmony with your wishes and music. Your spells are part of your vast repertoire, magic that you can tune to different situations. You know two cantrips of your choice from the bard spell list. <br />
-Spells Known: You know four 1st-level spells of your choice from the bard spell list. <br />
-Spellcasting Ability: Charisma is your spellcasting ability for your bard spells. Your magic comes from the heart and soul you pour into the performance of your music or oration. You use your Charisma whenever a spell refers to your spellcasting ability. In addition, you use your Charisma modifier when setting the saving throw DC for a bard spell you cast and when making an attack roll with one. <br />
Spell save DC = 8 + your proficiency bonus + your Charisma modifier. <br />
Spell attack modifier = your proficiency bonus + your Charisma modifier. <br />
-Ritual Casting: You can cast any bard spell you know as a ritual if that spell has the ritual tag. <br />
-Spellcasting Focus: You can use a musical instrument as a spellcasting focus for your bard spells. <br />
-Bardic Inspiration: You can inspire others through stirring words or music. <br />
To do so, you use a bonus action on your turn to choose one creature other than yourself within 60 feet of you who can hear you. That creature gains one Bardic Inspiration die, a d6. <br />
Once within the next 10 minutes, the creature can roll the die and add the number rolled to one ability check, attack roll, or saving throw it makes. The creature can wait until after it rolls the d20 before deciding to use the Bardic Inspiration die, but must decide before the DM says whether the roll succeeds or fails. Once the Bardic Inspiration die is rolled, it is lost. A creature can have only one Bardic Inspiration die at a time. <br />
You can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain any expended uses when you finish a long rest.",
:start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a rapier, (b) a longsword, or (c) any simple weapon <br />
• (a) a diplomat’s pack or (b) an entertainer's pack <br />
• (a) a lute or (b) any other musical instrument <br />
• Leather armor and a dagger"

c3 = Profession.create :name => "Cleric",
:description => "Clerics are intermediaries between the mortal world and the distant planes of the gods. As varied as the gods they serve, clerics strive to embody the handiwork of their deities. No ordinary priest, a cleric is imbued with divine magic. <br />
Divine magic, as the name suggests, is the power of the gods, flowing from them into the world. Clerics are conduits for that power, manifesting it as miraculous effects. The gods don’t grant this power to everyone who seeks it, but only to those chosen to fulfill a high calling. <br />
Harnessing divine magic doesn’t rely on study or training. A cleric might learn formulaic prayers and ancient rites, but the ability to cast cleric spells relies on devotion and an intuitive sense of a deity’s wishes. <br />
Clerics combine the helpful magic of healing and inspiring their allies with spells that harm and hinder foes. They can provoke awe and dread, lay curses of plague or poison, and even call down flames from heaven to consume their enemies. For those evildoers who will benefit most from a mace to the head, clerics depend on their combat training to let them wade into melee with the power of the gods on their side. <br />
Not every acolyte or officiant at a temple or shrine is a cleric. Some priests are called to a simple life of temple service, carrying out their gods’ will through prayer and sacrifice, not by magic and strength of arms. In some cities, priesthood amounts to a political office, viewed as a stepping stone to higher positions of authority and involving no communion with a god at all. True clerics are rare in most hierarchies. <br />
When a cleric takes up an adventuring life, it is usually because his or her god demands it. Pursuing the goals of the gods often involves braving dangers beyond the walls of civilization, smiting evil or seeking holy relics in ancient tombs. Many clerics are also expected to protect their deities’ worshipers, which can mean fighting rampaging orcs, negotiating peace between warring nations, or sealing a portal that would allow a demon prince to enter the world. <br />
Most adventuring clerics maintain some connection to established temples and orders of their faiths. A temple might ask for a cleric’s aid, or a high priest might be in a position to demand it.",
:hit_dice => "d8",
:saving_throw => "Wisdom, Charisma",
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

c4 = Profession.create :name => "Druid",
:description => "Druids revere nature above all, gaining their spells and other magical powers either from the force of nature itself or from a nature deity. Many druids pursue a mystic spirituality of transcendent union with nature rather than devotion to a divine entity, while others serve gods of wild nature, animals, or elemental forces. The ancient druidic traditions are sometimes called the Old Faith, in contrast to the worship of gods in temples and shrines. <br />
Druid spells are oriented toward nature and animals — the power of tooth and claw, of sun and moon, of fire and storm. Druids also gain the ability to take on animal forms, and some druids make a particular study of this practice, even to the point where they prefer animal form to their natural form. <br />
For druids, nature exists in a precarious balance. The four elements that make up a world—air, earth, fire, and water—must remain in equilibrium. If one element were to gain power over the others, the world could be destroyed, drawn into one of the elemental planes and broken apart into its component elements. Thus, druids oppose cults of Elemental Evil and others who promote one element to the exclusion of others. <br />
Druids are also concerned with the delicate ecological balance that sustains plant and animal life, and the need for civilized folk to live in harmony with nature, not in opposition to it. Druids accept that which is cruel in nature, and they hate that which is unnatural, including aberrations (such as beholders and mind flayers) and undead (such as zombies and vampires). Druids som etim es lead raids against such creatures, especially when the monsters encroach on the druids’ territory. <br />
Druids are often found guarding sacred sites or watching over regions of unspoiled nature. But when a significant danger arises, threatening nature’s balance or the lands they protect, druids take on a more active role in combating the threat, as adventurers.",
:hit_dice => "d8",
:saving_throw => "Intelligence, Wisdom",
:prof_skills => "Choose two from Arcana, Animal Handling, Insight, Medicine, Nature, Perception, Religion, and Survival.",
:start_hit_points => "8",
:start_prof_bonus => "+2",
:start_features => "Light armor, medium armor, shield proficiencies (druids will
not wear armor or use shields made of metal). Proficient in Clubs, daggers, darts, javelins, maces, quarterstaffs, scimitars, sickles, slings, spears. <br />
-Druidic: You know Druidic, the secret language of druids. You can speak the language and use it to leave hidden messages. You and others who know this language automatically spot such a message. Others spot the message’s presence with a successful DC 15 Wisdom (Perception) check but can’t decipher it without magic. <br />
-Spellcasting: Drawing on the divine essence of nature itself, you can cast spells to shape that essence to your will. At 1st level, you know two cantrips of your choice from the druid spell list. <br />
-Spellcasting Ability: Wisdom is your spellcasting ability for your druid spells, since your magic draws upon your devotion and attunement to nature. You use your Wisdom whenever
a spell refers to your spellcasting ability. In addition, you use your Wisdom modifier when setting the saving throw DC for a druid spell you cast and when making an attack roll with one. <br />
Spell save DC = 8 + your proficiency bonus + your Wisdom modifier. <br />
Spell attack modifier = your proficiency bonus + your Wisdom modifier. <br />
-Ritual Casting: You can cast a druid spell as a ritual if that spell has the ritual tag and you have the spell prepared. <br />
-Spellcasting Focus: You can use a druidic focus as a spellcasting focus for your druid spells.",
:start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a wooden shield or (b) any simple weapon <br />
• (a) a scimitar or (b) any simple melee weapon <br />
• Leather armor, an explorer’s pack, and a druidic focus"

c5 = Profession.create :name => "Fighter",
:description => "Fighters learn the basics of all combat styles. Every fighter can swing an axe, fence with a rapier, wield a longsword or a greatsword, use a bow, and even trap foes in a net with some degree of skill. Likewise, a fighter is adept with shields and every form of armor. Beyond that basic degree of familiarity, each fighter specializes in a certain style of combat. Some concentrate on archery, some on fighting with two weapons at once, and some on augmenting their martial skills with magic. This combination of broad general ability and extensive specialization makes fighters superior combatants
on battlefields and in dungeons alike.",
:hit_dice => "d10",
:saving_throw => "Strength and Constitution or Dexterity",
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

c6 = Profession.create :name => "Monk",
:description => "Monks make careful study of a magical energy that most monastic traditions call ki. This energy is an element of the magic that suffuses the multiverse—specifically, the element that flows through living bodies. Monks harness this power within themselves to create magical effects and exceed their bodies' physical capabilities, and some of their special attacks can hinder the flow of ki in their opponents. <br />
Using this energy, monks channel uncanny speed and strength into their unarmed strikes. As they gain experience, their martial training and their mastery of ki gives them more power over their bodies and the bodies of their foes. <br />
Small walled cloisters dot the landscapes of the worlds of D&D, tiny refuges from the flow of ordinary life, where time seems to stand still. The monks who live there seek personal perfection through contemplation and rigorous training. Many entered the monastery as children, sent to live there when their parents died, when food couldn’t be found to support them, or in return for some kindness that the monks had performed for their families. <br />
Some monks live entirely apart from the surrounding population, secluded from anything that might impede their spiritual progress. Others are sworn to isolation, emerging only to serve as spies or at the command of their leader, a noble patron, or some other mortal or divine power. <br />
The majority of monks don’t shun their neighbors, making frequent visits to nearby towns or villages and exchanging their service for food and other goods. As versatile warriors, monks often end up protecting their neighbors from monsters or tyrants. <br />
For a monk, becoming an adventurer means leaving a structured, communal lifestyle to become a wanderer. This can be a harsh transition, and monks don’t undertake it lightly. Those who leave their cloisters take their work seriously, approaching their adventures as personal tests of their physical and spiritual growth. <br />
As a rule, monks care little for material wealth and are driven by a desire to accomplish a greater mission than merely slaying monsters and plundering their treasure.",
:hit_dice => "d8",
:saving_throw => "Strength, Dexterity",
:prof_skills => "Choose two from Acrobatics, Athletics, History, Insight, Religion, and Stealth",
:start_hit_points => "8",
:start_prof_bonus => "+2",
:start_features => "No Armor proficencies. Simple weapons, shortsword proficiency. Choose one type of artisan’s tools or one musical instrument proficiency <br />
-Unarmored Defence: Beginning at 1st level, while you are wearing no armor and not wielding a shield, your AC equals 10 + your Dexterity modifier + your Wisdom modifier. <br />
-Martial Arts: At 1st level, your practice of martial arts gives you mastery of combat styles that use unarmed strikes and monk weapons, which are shortswords and any simple melee weapons that don’t have the two-handed or heavy property. <br />
You gain the following benefits while you are unarmed or wielding only monk weapons and you aren’t wearing armor or wielding a shield: <br />
• You can use Dexterity instead of Strength for the attack and damage rolls of your unarmed strikes and monk weapons. <br />
• You can roll a d4 in place of the normal damage of your unarmed strike or monk weapon. This die changes as you gain monk levels. <br />
• When you use the Attack action with an unarmed strike or a monk weapon on your turn, you can make one unarmed strike as a bonus action. For example, if you take the Attack action and attack with a quarter - staff, you can also make an unarmed strike as a bonus action, assuming you haven't already taken a bonus action this turn. <br />
Certain monasteries use specialized forms of the monk weapons. For example, you might use a club that is two lengths of wood connected by a short chain (called a nunchaku) or a sickle with a shorter, straighter blade (called a kama).",
:start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a shortsword or (b) any simple weapon <br />
• (a) a dungeoneer’s pack or (b) an explorer’s pack <br />
• 10 darts"

c7 = Profession.create :name => "Paladin",
:description => "A paladin swears to uphold justice and righteousness, to stand with the good things of the world against the encroaching darkness, and to hunt the forces of evil wherever they lurk. Different paladins focus on various aspects of the cause of righteousness, but all are bound by the oaths that grant them power to do their sacred work. Although many paladins are devoted to gods of good, a paladin’s power comes as much from a commitment to justice itself as it does from a god. <br />
Paladins train for years to learn the skills of combat, mastering a variety of weapons and armor. Even so, their martial skills are secondary to the magical power they wield: power to heal the sick and injured, to smite the wicked and the undead, and to protect the innocent and those who join them in the fight for justice. <br />
Almost by definition, the life of a paladin is an adventuring life. Unless a lasting injury has taken him or her away from adventuring for a time, every paladin lives on the front lines of the cosmic struggle against evil. Fighters are rare enough among the ranks of the militias and armies of the world, but even fewer people can claim the true calling of a paladin. When they do receive the call, these warriors turn from their former occupations and take up arms to fight evil. Sometimes their oaths lead them into the service of the crown as leaders of elite groups of knights, but even then their loyalty is first to the cause of righteousness, not to crown and country. <br />
Adventuring paladins take their work seriously. A delve into an ancient ruin or dusty crypt can be a quest driven by a higher purpose than the acquisition of treasure. Evil lurks in dungeons and primeval forests, and even the smallest victory against it can tilt the cosmic balance away from oblivion.",
:hit_dice => "d10",
:saving_throw => "Wisdom, Charisma",
:prof_skills => "Choose two from Athletics, Insight, Intimidation, Medicine, Persuasion, and Religion",
:start_hit_points => "10",
:start_prof_bonus => "+2",
:start_features => "Proficient in all armor, shields. Proficient in all simple weapons, martial weapons <br />
-Divine Sense: The presence of strong evil registers on your senses like a noxious odor, and powerful good rings like heavenly music in your ears. As an action, you can open your awareness to detect such forces. Until the end of your next turn, you know the location of any celestial, fiend, or undead within 60 feet of you that is not behind total cover. You know the type (celestial, fiend, or undead) of any being whose presence you sense, but not its identity (the vampire Count Strahd von Zarovich, for instance). <br />
Within the same radius, you also detect the presence of any place or object that has been consecrated or desecrated, as with the hallow spell. <br />
You can use this feature a number of times equal to 1 + your Charisma modifier. When you finish a long rest, you regain all expended uses. <br />
-Lay on Hands: Your blessed touch can heal wounds. You have a pool of healing power that replenishes when you take a long rest. With that pool, you can restore a total number of hit points equal to your paladin level x 5. <br />
As an action, you can touch a creature and draw power from the pool to restore a number of hit points to that creature, up to the maximum amount remaining in your pool. <br />
Alternatively, you can expend 5 hit points from your pool of healing to cure the target of one disease or neutralize one poison affecting it. You can cure multiple diseases and neutralize multiple poisons with a single use of Lay on Hands, expending hit points separately for each one. <br />
This feature has no effect on undead and constructs.",
:start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a martial weapon and a shield or (b) two martial weapons <br />
• (a) five javelins or (b) any simple melee weapon <br />
• (a) a priest’s pack or (b) an explorer’s pack <br />
• Chain mail and a holy symbol"

c8 = Profession.create :name => "Ranger",
:description => "Warriors of the wilderness, rangers specialize in hunting the monsters that threaten the edges of civilization—humanoid raiders, rampaging beasts and monstrosities, terrible giants, and deadly dragons. They learn to track their quarry as a predator does, moving stealthily through the wilds and hiding themselves in brush and rubble. Rangers focus their combat training on techniques that are particularly useful against their specific favored foes. <br />
Thanks to their familiarity with the wilds, rangers acquire the ability to cast spells that harness nature’s power, much as a druid does. Their spells, like their combat abilities, emphasize speed, stealth, and the hunt. A ranger’s talents and abilities are honed with deadly focus on the grim task of protecting the borderlands. <br />
Though a ranger might make a living as a hunter, a guide, or a tracker, a ranger’s true calling is to defend the outskirts of civilization from the ravages of monsters and humanoid hordes that press in from the wild. In som e places, rangers gather in secretive orders or join forces with druidic circles. Many rangers, though, are independent almost to a fault, knowing that, when a dragon or a band of orcs attacks, a ranger might be the first—and possibly the last—line of defense. <br />
This fierce independence makes rangers well suited to adventuring, since they are accustomed to life far from the comforts of a dry bed and a hot bath. Faced with city-bred adventurers who grouse and whine about the hardships of the wild, rangers respond with some mixture of amusement, frustration, and compassion. But they quickly learn that other adventurers who can carry their own weight in a fight against civilization’s foes are worth any extra burden. Coddled city folk might not know how to feed themselves or find fresh water in the wild, but they make up for it in other ways.",
:hit_dice => "d10",
:saving_throw => "Strength, Dexterity",
:prof_skills => "Choose three from Animal Handling, Athletics, Insight, Investigation, Nature, Perception, Stealth, and Survival",
:start_hit_points => "10",
:start_prof_bonus => "+2",
:start_features => "Proficient with Light armor, medium armor, shields. Proficient with all simple weapons, martial weapons. <br />
-Favored Enemy: Beginning at 1st level, you have significant experience studying, tracking, hunting, and even talking to a certain type of enemy. <br />
Choose a type of favored enemy: aberrations, beasts, celestials, constructs, dragons, elementals, fey, fiends, giants, monstrosities, oozes, plants, or undead. Alternatively, you can select two races of humanoid (such as gnolls and orcs) as favored enemies. <br />
You have advantage on Wisdom (Survival) checks to track your favored enemies, as well as on Intelligence checks to recall information about them. <br />
When you gain this feature, you also learn one language of your choice that is spoken by your favored enemies, if they speak one at all. <br />
You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures. <br />
-Natural Explorer: You are particularly familiar with one type of natural environment and are adept at traveling and surviving in such regions. Choose one type of favored terrain: arctic, coast, desert, forest, grassland, mountain, swamp, or the Underdark. <br />
When you make an Intelligence or Wisdom check related to your favored terrain, your proficiency bonus is doubled if you are using a skill that you’re proficient in. <br />
While traveling for an hour or more in your favored terrain, you gain the following benefits: <br />
• Difficult terrain doesn’t slow your group’s travel. <br />
• Your group can’t become lost except by magical means. <br />
• Even when you are engaged in another activity while traveling (such as foraging, navigating, or tracking), you remain alert to danger. <br />
• If you are traveling alone, you can move stealthily at a normal pace. <br />
• When you forage, you find twice as much food as you normally would. <br />
• While tracking other creatures, you also learn their exact number, their sizes, and how long ago they passed through the area. <br />
You choose additional favored terrain types at 6th and 10th level.",
:start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) scale mail or (b) leather armor <br />
• (a) two shortswords or (b) two simple melee weapons <br />
• (a) a dungeoneer’s pack or (b) an explorer’s pack <br />
• A longbow and a quiver of 20 arrows"

c9 = Profession.create :name => "Rogue",
:description => "Rogues devote as much effort to mastering the use of a variety of skills as they do to perfecting their combat abilities, giving them a broad expertise that few other characters can match. <br />
Many rogues focus on stealth and deception, while others refine the skills that help them in a dungeon environment, such as climbing, finding and disarming traps, and opening locks. <br />
When it comes to combat, rogues prioritize cunning over brute strength. A rogue would rather make one precise strike, placing it exactly where the attack will hurt the target most, than wear an opponent down with a barrage of attacks. <br />
Rogues have an almost supernatural knack for avoiding danger, and a few learn magical tricks to supplement their other abilities. <br />
Every town and city has its share of rogues. Most of them live up to the worst stereotypes of the class, making a living as burglars, assassins, cutpurses, and con artists. Often, these scoundrels are organized into thieves’ guilds or crime families. Plenty of rogues operate independently, but even they sometimes recruit apprentices to help them in their scams
and heists. A few rogues make an honest living as locksmiths, investigators, or exterminators, which can be a dangerous job in a world where dire rats—and wererats—haunt the sewers. <br />
As adventurers, rogues fall on both sides of the law. Some are hardened criminals who decide to seek their fortune in treasure hoards, while others take up a life of adventure to escape from the law. Some have learned and perfected their skills with the explicit purpose of infiltrating ancient ruins and hidden crypts in search of treasure.",
:hit_dice => "d8",
:saving_throw => "Dexterity, Intelligence",
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

c10 = Profession.create :name => "Sorcerer",
:description => "Magic is a part of every sorcerer, suffusing body, mind, and spirit with a latent power that waits to be tapped. Some sorcerers wield magic that springs from an ancient bloodline infused with the magic of dragons. Others carry a raw, uncontrolled magic within them, a chaotic storm that manifests in unexpected ways. The appearance of sorcerous powers is wildly unpredictable. <br />
Some draconic bloodlines produce exactly one sorcerer in every generation, but in other lines of descent every individual is a sorcerer. Most of the time, the talents of sorcery appear as apparent flukes. Some sorcerers can’t name the origin of their power, while others trace it to strange events in their own lives. The touch of a demon, the blessing of a dryad at a baby’s birth, or a taste of the water from a mysterious spring might spark the gift of sorcery. So too might the gift of a deity of magic, exposure to the elemental forces of the Inner Planes or the maddening chaos of Limbo, or a glimpse into the inner workings of reality. <br />
Sorcerers have no use for the spellbooks and ancient tomes of magic lore that wizards rely on, nor do they rely on a patron to grant their spells as warlocks do. <br />
By learning to harness and channel their own inborn magic, they can discover new and staggering ways to unleash that power. <br />
Sorcerers are rare in the world, and it’s unusual to find a sorcerer who is not involved in the adventuring life in some way. People with magical power seething in their veins soon discover that the power doesn’t like to stay quiet. A sorcerer’s magic wants to be wielded, and it has a tendency to spill out in unpredictable ways if it isn’t called on. <br />
Sorcerers often have obscure or quixotic motivations driving them to adventure. Some seek a greater understanding of the magical force that infuses them, or the answer to the mystery of its origin. Others hope to find a way to get rid of it, or to unleash its full potential. <br />
Whatever their goals, sorcerers are every bit as useful to an adventuring party as wizards, making up for a comparative lack of breadth in their magical knowledge with enormous flexibility in using the spells they know.",
:hit_dice => "d6",
:saving_throw => "Constitution, Charisma",
:prof_skills => "Choose two from Arcana, Deception, Insight, Intimidation, Persuasion, and Religion",
:start_hit_points => "6",
:start_prof_bonus => "+2",
:start_features => "No Armor proficiency. Proficient in daggers, darts, slings, quarterstaffs, light crossbows. <br />
-Spellcasting: An event in your past, or in the life of a parent or ancestor, left an indelible mark on you, infusing you with arcane magic. This font of magic, whatever its origin, fuels your spells. At 1st level, you know four cantrips of your choice from the sorcerer spell list. <br />
-Spells Known: You know two 1st-level spells of your choice from the sorcerer spell list. <br />
-Spellcasting Ability: Charisma is your spellcasting ability for your sorcerer spells, since the power of your magic relies on your ability to project your will into the world. You use your Charisma whenever a spell refers to your spellcasting ability. In addition, you use your Charisma modifier when setting the saving throw DC for a sorcerer spell you cast and when making an attack roll with one. <br />
Spell save DC= 8 + your proficiency bonus + your Charisma modifier. <br />
Spell attack modifier = your proficiency bonus + your Charisma modifier. <br />
-Spellcasting Focus: You can use an arcane focus as a spellcasting focus for your sorcerer spells. <br />
-Sorcerous Origin: Choose a sorcerous origin, which describes the source of your innate magical power: Draconic Bloodline or Wild Magic, both detailed at the end of the class description. Your choice grants you features when you choose it at 1st level and again at 6th, 14th, and 18th level.",
:start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a light crossbow and 20 bolts or (b) any simple weapon <br />
• (a) a component pouch or (b) an arcane focus <br />
• (a) a dungeoneer’s pack or (b) an explorer’s pack <br />
• Two daggers"

c11 = Profession.create :name => "Warlock",
:description => "A warlock is defined by a pact with an otherworldly being. Sometimes the relationship between warlock and patron is like that of a cleric and a deity, though the beings that serve as patrons for warlocks are not gods. A warlock might lead a cult dedicated to a demon prince, an archdevil, or an utterly alien entity—beings not typically served by clerics. More often, though, the arrangement is similar to that between a master and an apprentice. The warlock learns and grows in power, at the cost of occasional services performed on the patron’s behalf. <br />
The magic bestowed on a warlock ranges from minor but lasting alterations to the warlock's being (such as the ability to see in darkness or to read any language) to access to powerful spells. Unlike bookish wizards, warlocks supplement their magic with some facility at hand-to-hand combat. They are comfortable in light armor and know how to use simple weapons. <br />
Warlocks are driven by an insatiable need for knowledge and power, which compels them into their pacts and shapes their lives. This thirst drives warlocks into their pacts and shapes their later careers as well. <br //>
Stories of warlocks binding themselves to fiends are widely known. But many warlocks serve patrons that are not fiendish. Sometimes a traveler in the wilds comes to a strangely beautiful tower, meets its fey lord or lady, and stumbles into a pact without being fully aware of it. And sometimes, while poring over tomes of forbidden lore, a brilliant but crazed student’s mind is opened to realities beyond the material world and to the alien beings that dwell in the outer void. <br />
Once a pact is made, a warlock’s thirst for knowledge and power can’t be slaked with mere study and research. No one makes a pact with such a mighty patron if he or she doesn’t intend to use the power thus gained. Rather, the vast majority of warlocks spend their days in active pursuit of their goals, which typically means some kind of adventuring. Furthermore, the demands of their patrons drive warlocks toward adventure.",
:hit_dice => "d8",
:saving_throw => "Wisdom, Charisma",
:prof_skills => "Choose two skills from Arcana, Deception, History, Intimidation, Investigation, Nature, and Religion",
:start_hit_points => "8",
:start_prof_bonus => "+2",
:start_features => "Proficient with Light Armor. Proficient with all simple weapons. <br />
-Otherworldly Patron: At 1st level, you have struck a bargain with an otherworldly being of your choice: the Archfey, the Fiend, or the Great Old One. Your choice grants you features at 1st level and again at 6th, 10th, and 14th level. <br />
-Pact Magic: Your arcane research and the magic bestowed on you by your patron have given you facility with spells. You know two cantrips of your choice from the warlock spell list. <br />
-Spells Known: At 1st level, you know two 1st-level spells of your choice from the warlock spell list. <br />
-Spellcasting Ability: Charisma is your spellcasting ability for your warlock spells, so you use your Charisma whenever a spell refers to your spellcasting ability. In addition, you use your Charisma modifier when setting the saving throw DC for a warlock spell you cast and when making an attack roll with one. <br/>
Spell save DC = 8 + your proficiency bonus + your Charisma modifier <br />
Spell attack modifier = your proficiency bonus + your Charisma modifier <br />
-Spellcasting Focus: You can use an arcane focus as a spellcasting focus for your warlock spells.",
:start_equipment => "You start with the following equipment, in addition to the equipment granted by your background: <br />
• (a) a light crossbow and 20 bolts or (b) any simple weapon <br />
• (a) a component pouch or (b) an arcane focus <br />
• (a) a scholar’s pack or (b) a dungeoneer’s pack <br />
• Leather armor, any simple weapon, and two daggers"

c12 = Profession.create :name => "Wizard",
:description => "Wizards are supreme magic-users, defined and united as a class by the spells they cast. Drawing on the subtle weave of magic that permeates the cosmos, wizards cast spells of explosive fire, arcing lightning, subtle deception, and brute-force mind control. Their magic conjures monsters from other planes of existence, glimpses the future, or turns slain foes into zombies. Their mightiest spells change one substance into another, call meteors down from the sky, or open portals to other worlds. <br />
Though the casting of a typical spell requires merely the utterance of a few strange words, fleeting gestures, and sometimes a pinch or clump of exotic materials, these surface components barely hint at the expertise attained after years of apprenticeship and countless hours of study. <br />
Wizards live and die by their spells. Everything else is secondary. They learn new spells as they experiment and grow in experience. They can also learn them from other wizards, from ancient tomes or inscriptions, and from ancient creatures (such as the fey) that are steeped in magic. <br />
Wizards’ lives are seldom mundane. The closest a wizard is likely to come to an ordinary life is working as a sage or lecturer in a library or university, teaching others the secrets of the multiverse. Other wizards sell their services as diviners, serve in military forces, or pursue lives of crime or domination. <br />
But the lure of knowledge and power calls even the most unadventurous wizards out of the safety of their libraries and laboratories and into crumbling ruins and lost cities. Most wizards believe that their counterparts in ancient civilizations knew secrets of magic that have been lost to the ages, and discovering those secrets could unlock the path to a power greater than any magic available in the present age.",
:hit_dice => "d6",
:saving_throw => "Intelligence, Wisdom",
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
:background_skills => "Deception, Sleight of Hand, Proficiency with Disguise Kit, Forgery Kit",
:background_languages => "",
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
:background_skills => "Deception, Stealth, Proficiency with one type of gaming set, thieves’ tools",
:background_languages => "",
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
:background_skills => "Acrobatics, Performance, Proficient in Disguise kit, one type of musical instrument",
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
:background_skills => "Animal Handling, Survival, Proficient in one type of artisan’s tools, vehicles (land)",
:background_languages => "",
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
Instead of an artisans’ guild, you might belong to a guild of traders, caravan masters, or shopkeepers. You don’t craft items yourself but earn a living by buying and selling the works of others (or the raw materials artisans need to practice their craft). Your guild might be a large merchant consortium (or family) with interests across the region. Perhaps you transported goods from one place to another, by ship, wagon, or caravan, or bought them from traveling traders and sold them in your own little shop. In some ways, the traveling merchant’s life lends itself to adventure far more than the life of an artisan. <br />
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
These details help establish your family and your title as features of the world of the campaign. <br />
Variant Noble: Knight. <br />
A knighthood is among the lowest noble titles in most societies, but it can be a path to higher status. If you wish to be a knight, choose the Retainers feature instead of the Position of Privilege feature. <br />
One of your commoner retainers is replaced by a noble who serves as your squire, aiding you in exchange for training on his or her own path to knighthood. Your two remaining retainers might include a groom to care for your horse and a servant who polishes your armor (and even helps you put it on). <br />
As an emblem of chivalry and the ideals of courtly love, you might include among your equipment a banner or other token from a noble lord or lady to whom you have given your heart—in a chaste sort of devotion. (This person could be your bond.)",
:background_skills => "History, Persuasion, One type of gaming set",
:background_languages => "One of your choice",
:background_equipment => "A set of fine clothes, a signet ring, a scroll of pedigree, and a purse containing 25 gp",
:feature => "Position of Privilege. <br />
Thanks to your noble birth, people are inclined to think the best of you. You are welcome in high society, and people assume you have the right to be wherever you are. The common folk make every effort to accommodate you and avoid your displeasure, and other people of high birth treat you as a member of the same social sphere. You can secure an audience with a local noble if you need to. <br />
Variant Feature: Retainers <br />
If your character has a noble background, you may select this background feature instead of Position of Privilege. <br />
You have the service of three retainers loyal to your family. These retainers can be attendants or messengers, and one might be a majordomo. Your retainers are commoners who can perform mundane tasks for you, but they do not fight for you, will not follow you into obviously dangerous areas (such as dungeons), and will leave if they are frequently endangered or abused.",
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

b9 = Background.create :name => "Outlander",
:description => "You grew up in the wilds, far from civilization and the comforts of town and technology. <br />
You’ve witnessed the migration of herds larger than forests, survived weather more extreme than any city-dweller could comprehend, and enjoyed the solitude of being the only thinking creature for miles in any direction. <br />
The wilds are in your blood, whether you were a nomad, an explorer, a recluse, a hunter-gatherer, or even a marauder. Even in places where you don’t know the specific features of the terrain, you know the ways of the wild. <br />
You've been to strange places and seen things that others cannot begin to fathom. Consider some of the distant lands you have visited, and how they impacted you. <br />
You can roll on the following table to determine your occupation during your time in the wild, or choose one that best fits your character. <br />
1. Forester. <br />
2. Trapper. <br />
3. Homesteader. <br />
4. Guide. <br />
5. Exile or outcast. <br />
6. Bounty hunter. <br />
7. Pilgrim. <br />
8. Tribal nomad. <br />
9. Hunter-gatherer. <br />
10. Tribal marauder.",
:background_skills => "Athletics, Survival, One type of musical instrument",
:background_languages => "One of your choice",
:background_equipment => "A staff, a hunting trap, a trophy from an animal you killed, a set of traveler’s clothes, and a belt pouch containing 10 gp",
:feature => "Wanderer. <br />
You have an excellent memory for maps and geography, and you can always recall the general layout of terrain, settlements, and other features around you. In addition, you can find food and fresh water for yourself and up to five other people each day, provided that the land offers berries,smallgame,water,andsoforth.",
:characteristics => "Often considered rude and uncouth among civilized folk, outlanders have little respect for the niceties of life in the cities. The ties of tribe, clan, family, and the natural world of which they are a part are the most important bonds to most outlanders.",
:personality_trait => "1. I’m driven by a wanderlust that led me away from home. <br />
2. I watch over my friends as ifthey were a litter of newborn pups. <br />
3. I once ran twenty-five miles without stopping to warn to my clan of an approaching orc horde. I’d do it again if I had to. <br />
4. I have a lesson for every situation, drawn from observing nature. <br />
5. I place no stock in wealthy or well-mannered folk. Money and manners won’t save you from a hungry owlbear. <br />
6. I’m always picking things up, absently fiddling with them, and sometimes accidentally breaking them. <br />
7. I feel far more comfortable around animals than people. <br />
8. I was, infact, raised by wolves.",
:ideal => "1. Change. Life is like the seasons, in constant change, and we must change with it. <br />
2. Greater Good. It is each person’s responsibility to make the most happiness for the whole tribe. <br />
3. Honor. If I dishonor myself, I dishonor my whole clan. <br />
4. Might. The strongest are meant to rule. <br />
5. Nature. The natural world is more important than all the constructs of civilization. <br />
6. Glory. I must earn glory in battle, for myself and my clan.",
:bond => "1. My family, clan, or tribe is the most important thing in my life, even when they are far from me. <br />
2. An injury to the unspoiled wilderness of my home is an injury to me. <br />
3. I will bring terrible wrath down on the evildoers who destroyed my homeland. <br />
4. I am the last of my tribe, and it is up to me to ensure their names enter legend. <br />
5. I suffer awful visions of a coming disaster and will do anything to prevent it. <br />
6. It is my duty to provide children to sustain my tribe.",
:flaw => "1. I am too enamored of ale, wine, and other intoxicants. <br />
2. There’s no room for caution in a life lived to the fullest. <br />
3. I remember every insult I’ve received and nurse a silent resentment toward anyone who’s ever wronged me. <br />
4. I am slow to trust members of other races, tribes, and societies. <br />
5. Violence is my answer to almost any challenge. <br />
6. Don’t expect me to save those who can’t save themselves. It is nature’s way that the strong thrive and the weak perish."

b10 = Background.create :name => "Sage",
:description => "You spent years learning the lore of the multiverse. You scoured manuscripts, studied scrolls, and listened to the greatest experts on the subjects that interest you. Your efforts have made you a master in your fields of study. <br />
Specialty. <br />
To determine the nature of your scholarly training, roll a d8 or choose from the options in the table below. <br />
1. Alchemist. <br />
2. Astronomer. <br />
3. Discredited academic. <br />
4. Librarian. <br />
5. Professor. <br />
6. Researcher. <br />
7. Wizard’s apprentice. <br />
8. Scribe.",
:background_skills => "Arcana, History",
:background_languages => "Two of your choice",
:background_equipment => "A bottle of black ink, a quill, a small knife, a letter from a dead colleague posing a question you have not yet been able to answer, a set of com m on clothes, and a belt pouch containing 10 gp",
:feature => "Researcher. <br />
When you attempt to learn or recall a piece of lore, if you do not know that information, you often know where and from whom you can obtain it. Usually, this information com es from a library, scriptorium, university, or a sage or other learned person or creature. Your DM might rule that the knowledge you seek is secreted away in an almost inaccessible place, or that it simply cannot be found. Unearthing the deepest secrets of the multiverse can require an adventure or even a whole campaign.",
:characteristics => "Sages are defined by their extensive studies, and their characteristics reflect this life of study. Devoted to scholarly pursuits, a sage values knowledge highly— sometimes in its own right, sometimes as a means toward other ideals.",
:personality_trait => "1. I use polysyllabic words that convey the impression of great erudition. <br />
2. I've read every book in the world’s greatest libraries — or I like to boast that I have. <br />
3. I'm used to helping out those who aren’t as smart as I am, and I patiently explain anything and everything to others. <br />
4. There’s nothing I like more than a good mystery. <br />
5  I’m willing to listen to every side of an argument before I make my own judgment. <br />
6. I . . . speak . . . slowly . . . when talking . . . to idiots, . . . which . . . almost. . . everyone . . . is . . . compared . . . to me. <br />
7. I am horribly, horribly awkward in social situations. <br />
8. I’m convinced that people are always trying to steal my secrets.",
:ideal => "1. Knowledge. The path to power and self-improvement is through knowledge. <br />
2. Beauty. What is beautiful points us beyond itself toward what is true. <br />
3. Logic. Emotions must not cloud our logical thinking. <br />
4. No Limits. Nothing should fetter the infinite possibility inherent in all existence. <br />
5. Power. Knowledge is the path to power and domination. <br />
6. Self-Improvement. The goal of a life of study is the betterment of oneself.",
:bond => "1. It is my duty to protect my students. <br />
2. I have an ancient text that holds terrible secrets that must not fall into the wrong hands. <br />
3. I work to preserve a library, university, scriptorium, or monastery. <br />
4. My life’s work is a series of tomes related to a specific field of lore. <br />
5. I've been searching my whole life for the answer to a certain question. <br />
6. I sold my soul for knowledge. I hope to do great deeds and win it back.",
:flaw => "1. I am easily distracted by the promise of information. <br />
2. Most people scream and run when they see a demon. I stop and take notes on its anatomy. <br />
3. Unlocking an ancient mystery is worth the price of a civilization. <br />
4. I overlook obvious solutions in favor of complicated ones. <br />
5 I speak without really thinking through my words, invariably insulting others. <br />
6 I can’t keep a secret to save my life, or anyone else’s."

b11 = Background.create :name => "Sailor",
:description => "You sailed on a seagoing vessel for years. In that time, you faced down mighty storms, monsters of the deep, and those who wanted to sink your craft to the bottomless depths. Your first love is the distant line of the horizon, but the time has come to try your hand at something new. <br />
Discuss the nature of the ship you previously sailed with your Dungeon Master. Was it a merchant ship, a naval vessel, a ship of discovery, or a pirate ship? How famous (or infamous) is it? Is it widely traveled? Is it still sailing, or is it missing and presumed lost with all hands? <br />
What were your duties on board—boatswain, captain, navigator, cook, or some other position? Who were the captain and first mate? Did you leave your ship on good terms with your fellows, or on the run? <br />
Variant Sailor: Pirate. <br />
You spent your youth under the sway of a dread pirate, a ruthless cutthroat who taught you how to survive in a world of sharks and savages. You’ve indulged in larceny on the high seas and sent more than one deserving soul to a briny grave. Fear and bloodshed are no strangers
to you, and you’ve garnered a somewhat unsavory reputation in many a port town. <br />
If you decide that your sailing career involved piracy, you can choose the Bad Reputation feature instead of the Ship’s Passage feature. ",
:background_skills => "Athletics, Perception, Proficiency with Navigator’s tools, vehicles (water)",
:background_languages => "",
:background_equipment => "A belaying pin (club), 50 feet of silk rope, a lucky charm such as a rabbit foot or a small stone with a hole in the center (or you may roll for a random trinket on the Trinkets table in chapter 5), a set of com m on clothes, and a belt pouch containing 10 gp",
:feature => "Ship’s Passage. <br />
When you need to, you can secure free passage on a sailing ship for yourself and your adventuring companions. You might sail on the ship you served on, or another ship you have good relations with (perhaps one captained by a former crewmate). Because you’re calling in a favor, you can’t be certain of a schedule or route that will meet your every need. Your Dungeon Master will determine how long it takes to get where you need to go. In return for your free passage, you and your companions are expected to assist the crew during the voyage. <br />
Variant Feature: Bad Reputation. <br />
If your character has a sailor background, you may select this background feature instead of Ship’s Passage. <br />
No matter where you go, people are afraid of you due to your reputation. When you are in a civilized settlement, you can get away with minor criminal offenses, such as refusing to pay for food at a tavern or breaking down doors at a local shop, since most people will not report your activity to the authorities.",
:characteristics => "Sailors can be a rough lot, but the responsibilities of life on a ship make them generally reliable as well. Life aboard a ship shapes their outlook and forms their most important attachments.",
:personality_trait => "1. My friends know they can rely on me, no matter what. <br />
2. I work hard so that Ican play hard when the work is done. <br />
3. I enjoy sailing into new ports and making new friends over a flagon of ale. <br />
4. I stretch the truth for the sake of a good story. <br />
5. To me, a tavern brawl is a nice way to get to know a new city. <br />
6. I never pass up a friendly wager. <br />
7. My language is as foul as an otyugh nest. <br />
8. I like a job well done, especially if I can convince someone else to do it.",
:ideal => "1. Respect. The thing that keeps a ship together is mutual respect between captain and crew. <br />
2. Fairness. We all do the work, so we all share in the rewards. <br />
3. Freedom. The sea is freedom — the freedom to go anywhere and do anything. <br />
4. Mastery. I’m a predator, and the other ships on the sea are my prey. <br />
5. People. I’m committed to my crewmates, not to ideals. <br />
6. Aspiration. Someday I’ll own my own ship and chart my own destiny.",
:bond => "1. I’m loyal to my captain first, everything else second. <br />
2. The ship is most important — crewmates and captains come and go. <br />
3. I’ll always remember my first ship. <br />
4. In a harbor town, I have a paramour whose eyes nearly stole me from the sea. <br />
5. I was cheated out of my fair share of the profits, and I want to get my due. <br />
6. Ruthless pirates murdered my captain and crewmates, plundered our ship, and left me to die. Vengeance will be mine.",
:flaw => "1. I follow orders, even if I think they’re wrong. <br />
2. I’ll say anything to avoid having to do extra work. <br />
3. Once someone questions my courage, I never back down no matter how dangerous the situation. <br />
4. Once I start drinking, it’s hard for me to stop. <br />
5. I can’t help but pocket loose coins and other trinkets I come across. <br />
6. My pride will probably lead to my destruction."

b12 = Background.create :name => "Soldier",
:description => "War has been your life for as long as you care to remember. You trained as a youth, studied the use of weapons and armor, learned basic survival techniques, including how to stay alive on the battlefield. <br />
You might have been part of a standing national army or a mercenary company, or perhaps a member of a local militia who rose to prominence during a recent war. When you choose this background, work with your DM to determine which military organization you were a part of, how far through its ranks you progressed, and what kind of experiences you had during your military career.Wasitastandingarmy,atownguard,oravillage militia? Or it might have been a noble’s or merchant’s private army, or a mercenary company. <br />
During your time as a soldier, you had a specific role to play in your unit or army. Roll a d8 or choose from the options in the table below to determine your role: <br />
1. Officer. <br />
2. Scout. <br />
3. Infantry. <br />
4. Cavalry. <br />
5. Healer. <br />
6. Quartermaster. <br />
7. Standard bearer. <br />
8. Support staff (cook, blacksmith, or the like)",
:background_skills => "Athletics, Intimidation, Proficient with one type of gaming set,
vehicles (land)",
:background_languages => "",
:background_equipment => "An insignia of rank, a trophy taken from
a fallen enemy (a dagger, broken blade, or piece of a banner), a set of bone dice or deck of cards, a set of com m on clothes, and a belt pouch containing 10 gp",
:feature => "Military Rank. <br />
You have a military rank from your career as a soldier. Soldiers loyal to your former military organization still recognize your authority and influence, and they defer to you if they are of a lower rank. You can invoke your rank to exert influence over other soldiers and requisition simple equipment or horses for temporary use. You can also usually gain access to friendly military encampments and fortresses where your rank is recognized.",
:characteristics => "The horrors of war combined with the rigid discipline of military service leave their mark on all soldiers, shaping their ideals, creating strong bonds, and often leaving them scarred and vulnerable to fear, shame, and hatred.",
:personality_trait => "1. I'm always polite and respectful. <br />
2. I’m haunted by memories o f war. I can’t get the images of violence out of my mind. <br />
3. I’ve lost too many friends, and I’m slow to make new ones. <br />
4. I’m full of inspiring and cautionary tales from my military experience relevant to almost every combat situation. <br />
5. I can stare down a hell hound without flinching. <br />
6. I enjoy being strong and like breaking things. <br />
7. I have a crude sense o f humor. <br />
8. I face problems head-on. A simple, direct solution is the best path to success.",
:ideal => "1. Greater Good. Our lot is to lay down our lives in defense of others. <br />
2. Responsibility. I do what I must and obey just authority. <br />
3. Independence. When people follow orders blindly, they embrace a kind of tyranny. <br />
4. Might. In life as in war, the stronger force wins. <br />
5. Live and Let Live. Ideals aren’t worth killing over or going to war for. <br />
6. Nation. My city, nation, or people are all that matter.",
:bond => "1. I would still lay down my life for the people I served with. <br />
2. Someone saved my life on the battlefield. To this day, I will never leave a friend behind. <br />
3. My honor is my life. <br />
4. I’ll never forget the crushing defeat my company suffered or the enemies who dealt it. <br />
5. Those who fight beside me are those worth dying for. <br />
6. I fight for those who cannot fight for themselves.",
:flaw => "1. The monstrous enemy we faced in battle still leaves me quivering with fear. <br />
2. I have little respect for anyone who is not a proven warrior. <br />
3. I made a terrible mistake in battle cost many lives — and I would do anything to keep that mistake secret. <br />
4. My hatred of my enemies is blind and unreasoning. <br />
5. I obey the law, even if the law causes misery. <br />
6. I’d rather eat my armor than admit when I’m wrong."

b13 = Background.create :name => "Urchin",
:description => "You grew up on the streets alone, orphaned, and poor. You had no one to watch over you or to provide for you, so you learned to provide for yourself. You fought fiercely over food and kept a constant watch out for other desperate souls who might steal from you. You slept on rooftops and in alleyways, exposed to the elements, and endured sickness without the advantage of medicine or a place to recuperate. <br />
You’ve survived despite all odds, and did so through cunning, strength, speed, or some combination of each. <br />
You begin your adventuring career with enough money to live modestly but securely for at least ten days. How did you come by that money? What allowed you to break free ofyour desperate circumstances and embark on a better life?",
:background_skills => "Sleight of Hand, Stealth, Proficiency with Disguise kit, thieves’ tools",
:background_languages => "",
:background_equipment => "A small knife, a map of the city you grew up in, a pet mouse, a token to remember your parents by, a set of common clothes, and a belt pouch containing 10 gp",
:feature => "City Secrets. <br />
You know the secret patterns and flow to cities and can find passages through the urban sprawl that others would miss. When you are not in combat, you (and companions you lead) can travel between any two locations in the city twice as fast as your speed would normally allow.",
:characteristics => "Urchins are shaped by lives of desperate poverty, for good and for ill. They tend to be driven either by a commitment to the people with whom they shared life on the street or by a burning desire to find a better life— and maybe get some payback on all the rich people who treated them badly.",
:personality_trait => "1. I hide scraps of food and trinkets away in my pockets. <br />
2. I ask a lot of questions. <br />
3. I like to squeeze into small places where no one else can get to me. <br />
4. I sleep with my back to a wall or tree, with everything I own wrapped in a bundle in my arms. <br />
5. I eat like a pig and have bad manners. <br />
6. I think anyone who’s nice to me is hiding evil intent. <br />
7. I don’t like to bathe. <br />
8. I bluntly say what other people are hinting at or hiding.",
:ideal => "1. Respect. All people, rich or poor, deserve respect. <br />
2. Community. We have to take care of each other, because no one else is going to do it. <br />
3. Change. The low are lifted up, and the high and mighty are brought down. Change is the nature of things. <br />
4. Retribution. The rich need to be shown what life and death are like in the gutters. <br />
5. People. I help the people who help me — that’s what keeps us alive. <br />
6. Aspiration. I'm going to prove that I'm worthy of a better life.",
:bond => "1. My town or city is my home, and I’ll fight to defend it. <br />
2. I sponsor an orphanage to keep others from enduring what I was forced to endure. <br />
3. I owe my survival to another urchin who taught me to live on the streets. <br />
4. I owe a debt I can never repay to the person who took pity on me. <br />
5. I escaped my life of poverty by robbing an important person, and I’m wanted for it. <br />
6. No one else should have to endure the hardships I’ve been through.",
:flaw => "1. If I'm outnumbered, I will run away from a fight. <br />
2. Gold seems like a lot of money to me, and I’ll do just about anything for more of it. <br />
3. I will never fully trust anyone other than myself. <br />
4. I’d rather kill someone in their sleep then fight fair. <br />
5. It’s not stealing if I need it more than someone else. <br />
6. People who can't take care of themselves get what they deserve."
