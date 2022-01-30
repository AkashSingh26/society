class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :registered_year
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
