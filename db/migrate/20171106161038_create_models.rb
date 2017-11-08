class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :User
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
