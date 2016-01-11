class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :status, default: :pending
      t.integer :posting_user
      t.integer :receiving_user
      t.references :book
      t.timestamps null: false
    end
  end
end
