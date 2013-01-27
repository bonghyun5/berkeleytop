class CreateRushApplications < ActiveRecord::Migration
  def change
    create_table :rush_applications do |t|
      t.string :name
      t.string :sex
      t.string :address
      t.string :phone_number
      t.string :mobile_number
      t.string :email
      t.text :question1
      t.text :question2
      t.text :question3

      t.timestamps
    end
  end
end
