class CreateHeroines < ActiveRecord::Migration[5.0]
  def change
    create_table :heroines do |t|
      t.string :name
      t.string :super_name
      t.integer :power_id
      	# 1.	Create the associations between models. You may have to alter the current schema to get your code working. If you've set up your relationships properly, you should be able to run rake db:seed without errors, and confirm in console that the heroines and powers have been created with the proper relations.
      t.timestamps
    end
  end
end
