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

require 'test_helper'

class StrdecoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
