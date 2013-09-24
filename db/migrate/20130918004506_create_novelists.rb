class CreateNovelists < ActiveRecord::Migration
  def change
    create_table :novelists do |t|
    	t.string :name, :limit => 120
    	t.string :gender, :limit => 7
    	t.string :born, :limit => 25
    	t.string :died, :limit => 25
    	t.string :nationality, :limit => 50

      t.timestamps
    end
  end
end
