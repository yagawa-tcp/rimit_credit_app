class CreateRimitCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :rimit_credits do |t|
      t.integer   :credit_num,        null: false
      t.integer   :rimit_consumption
      t.integer   :alert_consumption
      t.timestamps
    end
  end
end
