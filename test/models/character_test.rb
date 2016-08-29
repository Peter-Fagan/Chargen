# == Schema Information
#
# Table name: characters
#
#  id            :integer          not null, primary key
#  name          :string
#  race_id       :integer
#  profession_id :integer
#  background    :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
