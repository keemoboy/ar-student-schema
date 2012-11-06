require_relative '../../db/config'

class Student < ActiveRecord::Base

  validates :email, :format => { :with => /.+@.+\..{2,}/}, :uniqueness => true
  validates :age, :numericality => { :only_integer => true, :greater_than_or_equal_to => 5 }
  validates :phone, :format => { :with => /\(?\d{3}[\-\.\)\s]?\s?\d{3}[\-\.]?\d{4}\.?/}

  attr_accessible :first_name, :last_name, :gender, :birthday, :email, :phone

  def name
    self.first_name + " " + self.last_name
  end

  def age
    age = Time.now.year - self.birthday.year
  end
end