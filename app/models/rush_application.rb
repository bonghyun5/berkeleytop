class RushApplication < ActiveRecord::Base
  attr_accessible :address, :email, :mobile_number, :name, :phone_number, :question1, :question2, :question3, :sex
end
