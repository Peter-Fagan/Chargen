# == Schema Information
#
# Table name: races
#
#  id                :integer          not null, primary key
#  name              :string
#  description       :text
#  ability_increases :string
#  age               :string
#  alignment         :string
#  size              :string
#  speed             :string
#  languages         :string
#  features          :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class RaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
