class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :image_url
      t.string :title
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
