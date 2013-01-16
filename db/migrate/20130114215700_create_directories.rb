class CreateDirectories < ActiveRecord::Migration
  def change
    create_table :directories do |t|
      t.integer :user_id
      t.string :year
      t.string :major
      t.string :phone
      t.string :address
      t.text :comment

      t.timestamps
    end
  end
end
