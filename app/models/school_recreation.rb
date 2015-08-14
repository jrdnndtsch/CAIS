class SchoolRecreation < ActiveRecord::Base
  belongs_to :school
  belongs_to :recreation
end
