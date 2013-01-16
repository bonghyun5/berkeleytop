class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
  attr_accessible :approved, :email, :name, :password, :password_confirmation, :super_admin
  validates :email, presence: {message: "can't be blank"}, uniqueness: {message: "is already taken"}, email: {message: "is not a valid email"}
  validates :name, presence: true
  has_secure_password
  
  has_one :directory, dependent: :destroy
  
end
