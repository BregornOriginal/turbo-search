class AddUserRefToSearchQueries < ActiveRecord::Migration[7.0]
  def change
    add_reference :search_queries, :user, null: false, foreign_key: true
  end
end
