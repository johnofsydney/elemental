# == Schema Information
#
# Table name: scientists
#
#  id         :integer          not null, primary key
#  name       :text
#  born       :date
#  died       :date
#  city       :text
#  photo      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :integer
#

class Scientist < ApplicationRecord
  has_and_belongs_to_many :elements, -> {distinct}
  belongs_to :country, :optional => true
end
