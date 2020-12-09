# == Schema Information
#
# Table name: assignments
#
#  id                 :integer          not null, primary key
#  description        :text
#  due                :date
#  name               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  assignment_type_id :integer
#  course_id          :integer
#
class Assignment < ApplicationRecord
belongs_to(:course, { :required => false, :class_name => "Course", :foreign_key => "course_id" })
belongs_to(:assignment_type, { :required => false, :class_name => "AssignmentType", :foreign_key => "assignment_type_id" })
end
