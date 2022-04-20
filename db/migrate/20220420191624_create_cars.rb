class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :color
      t.integer :msrp
      t.string :img_url

      t.timestamps
    end
  end
end
