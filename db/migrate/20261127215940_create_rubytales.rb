class CreateRubytales < ActiveRecord::Migration[8.1]
  def change
    create_table :rubytales do |t|
      t.string :title
      t.references :region, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.string :becomestring

      t.timestamps
    end
  end
end
