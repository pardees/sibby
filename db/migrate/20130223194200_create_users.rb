class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.users :title
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
