class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.date :dob
      t.string :organization
      t.string :position
      t.string :cell_phone
      t.string :work_phone
      t.string :home_phone
      t.string :fax

      t.timestamps
    end
  end
end
