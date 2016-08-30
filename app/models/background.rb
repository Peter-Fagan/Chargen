# == Schema Information
#
# Table name: backgrounds
#
#  id                   :integer          not null, primary key
#  name                 :string
#  description          :text
#  background_skills    :string
#  background_languages :string
#  background_equipment :text
#  feature              :text
#  characteristics      :text
#  personality_trait    :string
#  ideal                :string
#  bond                 :string
#  flaw                 :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Background < ActiveRecord::Base
  has_many :characters
end
