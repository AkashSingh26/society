class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :room_no
      t.string :name
      t.string :mobile
      t.string :purchase_year
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
