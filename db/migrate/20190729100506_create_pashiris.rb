class CreatePashiris < ActiveRecord::Migration[5.2]
  def change
    create_table :pashiris do |t|
      t.string :name
      t.string :iraisha

      t.timestamps
    end
  end
end
