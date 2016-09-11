class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :Users
      t.string :index
      t.string :new
      t.string :create
      t.string :show

      t.timestamps null: false
    end
  end
end
