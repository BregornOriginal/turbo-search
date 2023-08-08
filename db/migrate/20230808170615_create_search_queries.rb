class CreateSearchQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :search_queries do |t|
      t.string :term
      t.timestamps
    end

    add_index :search_queries, :term
  end
end
