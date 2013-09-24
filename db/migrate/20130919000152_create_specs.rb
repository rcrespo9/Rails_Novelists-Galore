class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.string :novelist

      t.timestamps
    end
  end
end
