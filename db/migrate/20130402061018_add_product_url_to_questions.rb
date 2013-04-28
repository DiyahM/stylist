class AddProductUrlToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :product_url, :string
  end
end
