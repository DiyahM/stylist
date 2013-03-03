class RemoveStatusFromQuestion < ActiveRecord::Migration
  def up
    remove_column :questions, :status
  end

  def down
    add_column :questions, :status, :string
  end
end
