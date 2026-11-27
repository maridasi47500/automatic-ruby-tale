class CreatePeople < ActiveRecord::Migration[8.1]
  def change
    create_table :people do |t|
      t.string :type
      t.string :name
      t.string :age
      t.string :gender
      t.string :mood

      t.timestamps
    end
  end
end
