class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :quotation
      t.string :attribution
      t.datetime :genesis

      t.timestamps
    end
  end
end
