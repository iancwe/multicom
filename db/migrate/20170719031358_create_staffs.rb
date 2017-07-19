class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email
      t.string :password
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
