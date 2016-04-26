class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :location
      t.string :email

      t.timestamps null: false
    end
  end
end
