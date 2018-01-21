# == Schema Information
#
# Table name: countries_elements
#
#  id         :integer          not null, primary key
#  country_id :integer
#  element_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CountriesElement < ApplicationRecord
end
