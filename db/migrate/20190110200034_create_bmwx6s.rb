class CreateBmwx6s < ActiveRecord::Migration[5.2]
  def change
    create_table :bmwx6s do |t|
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
