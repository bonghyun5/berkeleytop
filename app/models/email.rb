class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Email < ActiveRecord::Base
  attr_accessible :address
  validates :address, presence: true, length: {minimum: 3}, uniqueness: true, email: true
end
