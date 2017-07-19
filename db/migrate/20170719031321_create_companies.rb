class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :subdomain
      t.string :img_url
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
