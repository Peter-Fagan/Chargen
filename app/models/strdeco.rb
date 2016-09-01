# == Schema Information
#
# Table name: strdecos
#
#  id           :integer          not null, primary key
#  strength     :integer
#  dexterity    :integer
#  constitution :integer
#  intelligence :integer
#  wisdom       :integer
#  charisma     :integer
#  str_bonus    :integer
#  dex_bonus    :integer
#  con_bonus    :integer
#  int_bonus    :integer
#  wis_bonus    :integer
#  cha_bonus    :integer
#  str_save     :integer
#  dex_save     :integer
#  con_save     :integer
#  int_save     :integer
#  wis_save     :integer
#  cha_save     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Strdeco < ActiveRecord::Base
  has_many :characters

  def self.generate_strdeco( character )
    increases = generate_increases( character )
    increases.default = 0

    new_strdeco = self.new({
      :strength => diceroll() + increases["Str"],
      :dexterity => diceroll() + increases["Dex"],
      :constitution => diceroll() + increases["Con"],
      :intelligence => diceroll() + increases["Int"],
      :wisdom => diceroll() + increases["Wis"],
      :charisma => diceroll() + increases["Cha"]
    })
    new_strdeco.str_bonus = generate_bonus( new_strdeco.strength )
    new_strdeco.dex_bonus = generate_bonus( new_strdeco.dexterity )
    new_strdeco.con_bonus = generate_bonus( new_strdeco.constitution )
    new_strdeco.int_bonus = generate_bonus( new_strdeco.intelligence )
    new_strdeco.wis_bonus = generate_bonus( new_strdeco.wisdom )
    new_strdeco.cha_bonus = generate_bonus( new_strdeco.charisma )

    new_strdeco.str_save = generate_bonus( new_strdeco.strength )
    new_strdeco.dex_save = generate_bonus( new_strdeco.dexterity )
    new_strdeco.con_save = generate_bonus( new_strdeco.constitution )
    new_strdeco.int_save = generate_bonus( new_strdeco.intelligence )
    new_strdeco.wis_save = generate_bonus( new_strdeco.wisdom )
    new_strdeco.cha_save = generate_bonus( new_strdeco.charisma )

    new_strdeco.save
    new_strdeco
  end

  def self.generate_increases( character )
    array = character.race.ability_increases.split(",").map do |quality|
      qualities = quality.split(":")
      qualities[1] = qualities[1].to_i
      qualities
    end
    array.to_h
  end

  def self.generate_bonus( val )
    (( val - 10 ) / 2).floor
  end

  def self.diceroll
    rand(1..6) + rand(1..6) + rand(1..6)
  end

end
