# == Schema Information
#
# Table name: countries_scientists
#
#  id           :integer          not null, primary key
#  country_id   :integer
#  scientist_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CountriesScientist < ApplicationRecord
end
