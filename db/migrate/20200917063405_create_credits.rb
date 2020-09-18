class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits do |t|
      t.integer     :credit_num
      t.integer     :graph_view
      t.integer     :alert_cons
      t.integer     :rimit_cons

      t.timestamps
    end
  end
end
