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

class Character < ActiveRecord::Base
  belongs_to :race
  belongs_to :profession
  belongs_to :collection
  has_one :user, :through => :collection
end
