# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  meets      :string
#  name       :string
#  prof_email :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Course < ApplicationRecord
end
