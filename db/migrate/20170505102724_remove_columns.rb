class RemoveColumns < ActiveRecord::Migration
  def change
  	remove_column :bookings, :is_available
  	add_column :bikes,:is_available, :boolean, default: true
  end
end
