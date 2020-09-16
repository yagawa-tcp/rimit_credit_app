class CreateRimitCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :rimit_credits do |t|

      t.timestamps
    end
  end
end
