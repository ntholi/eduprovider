class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :area_name
      t.string :city
      t.string :country
      t.string :phone_number

      t.timestamps
    end
  end
end
