class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.string :code
      t.decimal :sell
      t.decimal :buy

      t.timestamps
    end
  end
end
