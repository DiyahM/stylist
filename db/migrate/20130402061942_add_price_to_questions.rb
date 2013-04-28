class AddPriceToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :price, :decimal
  end
end
