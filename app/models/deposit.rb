# == Schema Information
#
# Table name: deposits
#
#  id         :integer          not null, primary key
#  name       :text
#  location   :text
#  quantity   :integer
#  units      :text
#  element_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deposit < ApplicationRecord
  belongs_to :element
end
