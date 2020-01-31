class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :type
      t.string :name
      t.string :color
      t.integer :age
      t.timestamps()
    end
  end
end
