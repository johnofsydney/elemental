# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Country < ApplicationRecord
  has_many :resources
  has_many :scientists
end
