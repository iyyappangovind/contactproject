class Removeemailtocontacts < ActiveRecord::Migration
  def change
remove_column :contacts, :email, :string
  end
end
