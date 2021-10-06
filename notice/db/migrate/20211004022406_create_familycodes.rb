class CreateFamilycodes < ActiveRecord::Migration[5.2]
  def change
    create_table :familycodes do |t|
      t.string :family_code
      t.timestamps
    end
  end
end
