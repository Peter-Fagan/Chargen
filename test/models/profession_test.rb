# == Schema Information
#
# Table name: professions
#
#  id               :integer          not null, primary key
#  name             :string
#  description      :text
#  hit_dice         :string
#  saving_throw     :string
#  prof_skills      :text
#  start_hit_points :integer
#  start_prof_bonus :string
#  start_features   :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ProfessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
