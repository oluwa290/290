class CreateBmws < ActiveRecord::Migration[5.2]
  def change
    create_table :bmws do |t|
      t.string :X6
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
