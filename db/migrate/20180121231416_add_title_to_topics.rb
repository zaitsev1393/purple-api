class AddTitleToTopics < ActiveRecord::Migration[5.1]
  def change
  	add_column :topics, :title, :text
  end
end
