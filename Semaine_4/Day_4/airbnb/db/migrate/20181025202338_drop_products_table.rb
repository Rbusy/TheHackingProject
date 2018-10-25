class DropProductsTable < ActiveRecord::Migration[5.2]
    def up
    drop_table :cities
  end
end
