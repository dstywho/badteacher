class CreateBookUsers < ActiveRecord::Migration
  def self.up
    create_table :book_users do |t|
      t.references :book
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :book_users
  end
end
