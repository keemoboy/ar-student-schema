require_relative '../../db/config'

class Student < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :gender, :birthday

  def name
    self.first_name + " " + self.last_name
  end

  def age
    age = Time.now.year - self.birthday.year
  end
end