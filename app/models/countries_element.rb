# == Schema Information
#
# Table name: countries_elements
#
#  id         :integer          not null, primary key
#  country_id :integer
#  element_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quantity   :integer
#  units      :text
#

class CountriesElement < ApplicationRecord
  has_many :countries
  has_many :elements
end
