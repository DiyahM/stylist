class AddStoreToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :store, :string
  end
end
