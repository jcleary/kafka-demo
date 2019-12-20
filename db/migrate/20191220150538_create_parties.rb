class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
