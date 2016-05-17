class CreateApts < ActiveRecord::Migration
  def change
    create_table :apts do |t|
      t.string :name
      t.string :time

      t.timestamps null: false
    end
  end
end
