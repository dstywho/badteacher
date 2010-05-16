class CreateBookGrades < ActiveRecord::Migration
  def self.up
    create_table :book_grades do |t|
      t.references :book
      t.references :grade

      t.timestamps
    end
  end

  def self.down
    drop_table :book_grades
  end
end
