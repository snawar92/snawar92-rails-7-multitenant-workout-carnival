class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user, null: false
      t.text :title

      t.timestamps
    end
  end
end
