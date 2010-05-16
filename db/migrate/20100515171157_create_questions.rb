class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.text :question
      t.references :book
      t.integer :page_number
      t.integer :number
      t.references :user      

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
