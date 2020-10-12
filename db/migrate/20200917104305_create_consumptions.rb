class CreateConsumptions < ActiveRecord::Migration[6.0]
  def change
    create_table :consumptions do |t|
      t.string      :product,      null: false
      t.integer     :money,        null: false
      t.integer     :category_id,  null: false
      t.string      :comment
      t.references  :user,     foreign_key: true
      t.timestamps
    end
  end
end
