class AddTimestampToEvent < ActiveRecord::Migration
  def change
    add_column :events, :timestamp, :string
  end
end
