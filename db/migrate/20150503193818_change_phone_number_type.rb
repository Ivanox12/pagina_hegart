class ChangePhoneNumberType < ActiveRecord::Migration
  def change
  	change_column :contact_requests, :phone_number, :string
  end
end
