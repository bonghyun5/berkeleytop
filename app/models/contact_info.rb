class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class ContactInfo < ActiveRecord::Base
  attr_accessible :email, :message, :name, :comment, :status, :user

  validates :email, :message, :name, presence: true

  validates :email, email: true
  
  STATUS_TYPES = ["Contacted", "Not Contacted"]
  
end
