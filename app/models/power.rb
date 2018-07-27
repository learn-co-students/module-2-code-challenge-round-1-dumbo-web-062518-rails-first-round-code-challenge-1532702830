class Power < ApplicationRecord
  has_many :heroines
  	# 1.	Create the associations between models. You may have to alter the current schema to get your code working. If you've set up your relationships properly, you should be able to run rake db:seed without errors, and confirm in console that the heroines and powers have been created with the proper relations.
end
