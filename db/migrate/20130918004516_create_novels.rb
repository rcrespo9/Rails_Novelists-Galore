class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
    	t.string :title, :limit => 250
    	t.integer :year_published
    	t.string :genre, :limit => 200
    	t.integer :novelist_id
    	
      t.timestamps
    end
  end
end
