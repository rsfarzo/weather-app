class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
