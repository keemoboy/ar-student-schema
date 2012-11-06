require_relative '../config'

class CreateStudents < ActiveRecord::Migration

  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.date :birthday
      t.string :phone
      t.timestamps
    end
  end

end
