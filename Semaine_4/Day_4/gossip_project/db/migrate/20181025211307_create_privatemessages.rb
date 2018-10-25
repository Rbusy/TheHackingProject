class CreatePrivatemessages < ActiveRecord::Migration[5.2]
  def change
    create_table :privatemessages do |t|
      t.text :content
      t.datetime :date
      t.timestamps
    end
  end
end
