class AddFieldsToItems < ActiveRecord::Migration
  def change
  	add_column :items, :title, :string
  	add_column :items, :description, :text
  	add_column :items, :url, :string
  	add_column :items, :user_id, :integer
  end
end
