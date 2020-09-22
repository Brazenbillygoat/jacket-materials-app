class CreateJackets < ActiveRecord::Migration[6.0]
  def change
    create_table :jackets do |t|
      t.string :name
      t.string :made_in

      t.timestamps
    end
  end
end
