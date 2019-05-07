class CreateBooks < ActiveRecord::Migration[5.2]

  def change
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end

    create_table :books do |t|
      t.belongs_to :genre, index: true
      t.string :isbn
      t.decimal :average_rating
      t.string :author
      t.string :binding
      t.string :manufacturer
      t.numeric :number_of_items
      t.numeric :number_of_pages
      t.string :product_group
      t.date :publication_date
      t.string :studio
      t.string :title

      t.timestamps
    end
  end
end
