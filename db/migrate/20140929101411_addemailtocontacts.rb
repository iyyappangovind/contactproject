class Addemailtocontacts < ActiveRecord::Migration
  def change
   add_column :contacts, :email, :string
  end
end
