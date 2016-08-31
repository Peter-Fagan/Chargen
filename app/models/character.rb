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
#

class Character < ActiveRecord::Base
  belongs_to :collection
  belongs_to :race
  belongs_to :profession
  belongs_to :background
  belongs_to :strdeco
  has_one :user, :through => :collection
end
