class CreateConsumeMoney < ActiveRecord::Migration[6.0]
  def change
    create_table :consume_moneys do |t|

      t.timestamps
    end
  end
end
