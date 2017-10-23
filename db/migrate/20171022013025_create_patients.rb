class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :organization
      t.string :gender
      t.integer :conditionsTotal
      t.string :conditionsList, defualt => [].to_yaml
      t.string :_id

      t.timestamps
    end
  end
end
