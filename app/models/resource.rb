# == Schema Information
#
# Table name: resources
#
#  id         :integer          not null, primary key
#  country_id :integer
#  element_id :integer
#  quantity   :integer
#

class Resource < ApplicationRecord
  belongs_to :country
  belongs_to :element
end
