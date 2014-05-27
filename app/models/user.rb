class User < ActiveRecord::Base
  validates_uniqueness_of :screen_name, :email
  validates_presence_of :email, :screen_name, :password
  validates_length_of :screen_name, :within =>  3..5
  validates_length_of :password, :minimum => 6
  validates_format_of :screen_name,
                      :multiline => true,
                      :with => /^[A-Z0-9_]*$/i,
                      :message => "must contain only letters, " +
                          "numbers, and underscores"
  validates_format_of :email,
                      :multiline => true,
                      :with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i,
                      :message => "must be a valid email address"



  #validate :valid_email
  #
  #def valid_email
  #  errors.add(:email, 'Must be valid email address') unless email.include?("@")
  #end
end
