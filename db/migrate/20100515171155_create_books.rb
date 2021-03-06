class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.references :publisher
      t.references :subject

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
