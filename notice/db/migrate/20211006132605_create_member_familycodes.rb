class CreateMemberFamilycodes < ActiveRecord::Migration[5.2]
  def change
    create_table :member_familycodes do |t|
      t.string :familycode_id
      t.string :member_id
      t.timestamps
    end
  end
end
