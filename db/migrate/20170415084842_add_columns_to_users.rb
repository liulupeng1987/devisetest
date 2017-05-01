class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :surname, :string
    add_column :users, :givenname, :string
    add_column :users, :gender, :string
    add_column :users, :company, :string
    add_column :users, :occupation, :string
    add_column :users, :companyprofile, :text
    add_column :users, :website, :string
    add_column :users, :address, :text
    add_column :users, :country, :string
    add_column :users, :phone, :string
    add_column :users, :whatsapp, :string
    add_column :users, :linkedin, :string
    add_column :users, :gmail, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
  end
end
