class SchoolAcademic < ActiveRecord::Base
  belongs_to :school
  belongs_to :academic
end
