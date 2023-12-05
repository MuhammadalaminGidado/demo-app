class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :no_of_students

      t.timestamps
    end
  end
end
