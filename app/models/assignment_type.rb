# == Schema Information
#
# Table name: assignment_types
#
#  id              :integer          not null, primary key
#  assignment_type :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class AssignmentType < ApplicationRecord
has_many(:assignments, { :class_name => "Assignment", :foreign_key => "assignment_type_id", :dependent => :destroy })
end
