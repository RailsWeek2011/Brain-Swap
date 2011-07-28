class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.text :content
      t.text :linkws
      t.text :linkcp
      t.string :category
      t.string :tag
      t.text :host

      t.timestamps
    end
  end
end
