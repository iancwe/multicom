class RemoveCompanyFromStaffs < ActiveRecord::Migration[5.1]
  def change
    remove_reference :staffs, :company, foreign_key: true
  end
end
