class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :reply
      t.integer :points

      t.timestamps
    end
  end
end
