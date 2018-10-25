class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.belongs_to :dog
      t.belongs_to :dogsitter
      t.timestamps
    end
  end
end
