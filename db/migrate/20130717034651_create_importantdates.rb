class CreateImportantdates < ActiveRecord::Migration
  def change
    create_table :importantdates do |t|
      t.datetime :importantdate
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
