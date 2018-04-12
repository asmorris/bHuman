class CreateKindnesses < ActiveRecord::Migration[5.1]
  def change
    create_table :kindnesses do |t|
      t.string :username
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
