# == Schema Information
#
# Table name: elements
#
#  id             :integer          not null, primary key
#  name           :text
#  description    :text
#  protons        :integer
#  electrons      :integer
#  described_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Element < ApplicationRecord
  has_and_belongs_to_many :scientists, -> {distinct}
  has_many :deposits
end
