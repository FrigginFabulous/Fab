class CreateAppoints < ActiveRecord::Migration
  def change
    create_table :appoints do |t|
      t.string :date
      t.string :hour

      t.timestamps null: false
    end
  end
end
