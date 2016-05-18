class CreateSayhellos < ActiveRecord::Migration
  def change
    create_table :sayhellos do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
