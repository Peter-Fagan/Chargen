# == Schema Information
#
# Table name: characters
#
#  id            :integer          not null, primary key
#  name          :string
#  race_id       :integer
#  profession_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  collection_id :integer
#  background_id :integer
#  strdeco_id    :integer
#

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
