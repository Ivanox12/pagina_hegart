class CreateContactRequests < ActiveRecord::Migration
  def change
    create_table :contact_requests do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.text :message

      t.timestamps null: false
    end
  end
end
