class CreateLandingQueries < ActiveRecord::Migration[5.2]
  def change
    create_table :landing_queries do |t|
      t.string :name
      t.string :contact
      t.timestamps
    end
  end
end
