class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, presence: true
  validates :super_name, {presence: true, uniqueness: true}
  validates :power_id, presence: true
  	# 1.	Create the associations between models. You may have to alter the current schema to get your code working. If you've set up your relationships properly, you should be able to run rake db:seed without errors, and confirm in console that the heroines and powers have been created with the proper relations.
end
