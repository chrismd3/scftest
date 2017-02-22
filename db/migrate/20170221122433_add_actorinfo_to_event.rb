class AddActorinfoToEvent < ActiveRecord::Migration
  def change
    add_column :events, :actorinfo, :string
  end
end
