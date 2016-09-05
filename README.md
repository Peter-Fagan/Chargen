## Dungeons and Dragons Character Generator

This is a simple character generator for Dungeons and Dragons 5th edition.
It is still a Work in Progress.
This project was designed so that a player can create a 1st level character ready for play. There are still a number of elements that this program doesn't do yet befre that can happen.
This project was created in my 6th week of my Web Development Immersive course.

### Link

https://dndcharactergen.herokuapp.com/

### Framework

This application was built using:

* Ruby 2.3.1
* Rails 4.2.6
* postgres 9.4
* HTML
* CSS
* Materialize

### Models

I initially set up 7 Models

* User
* Collection
* Character
* Race
* Profession
* Background
* Strdeco

### Functionality

With this program a User can create/edit a 1st level Dungeons and Dragons 5th ed by:

1. Select a Name.
2. Select a Race.
3. Select a Profession.
4. Select a Background.

Once the elements are selected, a character is created and their attributes are generated. Racial modifiers (ability_increases) are included in the generated attributes. Attributes can be re-generated using the "Reroll" button on the display page.

### Database creation

1. Bundle
2. rake db:create
3. rake db:migrate
4. rake db:seed

### Bugs

* Background elements random generation not working. I initially thought it would randomly generate a background once one was selected, but ti appears to only generate one when the seed is run.
* formatting - adding in the materialize framework changed a lot of the previous formatting.

### Todo

* Fix the Background random generation (personality_traits, ideals, bonds, flaws) or set them up as user selectable tables.
* Allow Profession to add the "start_prof_bonus" (which will be +2 for all classes) to the attributes noted in "saving_throw" (eg add 2 to the str_save for a fighter)
* Create a new table for Skills and allow the Race, Profession and Background to modify which ones receive the proficiency bonus (on top of the attribute bonus eg. str_bonus)
* Create an editable equipment list (or shopping cart) for the character, that will include the staring gear provided by the Profession and Background, as well as allowing the user to "Purchase" additional equipment.
* Allow the user to import an image for the character.
* Allow the user to export/print their characters.
* Do more styling on the visuals of the character generator
