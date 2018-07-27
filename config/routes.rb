Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
end
# 2.	On the heroines index page, a heroine's name should link to the heroine's show page. 
	# 3.	The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. Ms. Marvel), and her power. The power should link to the power show page. 
	# 4.	The power show page should have its name and description. 
	# 5.	As a visitor to the website, I should be able to create a new heroine with her name and super name. 
	# 6.	The form should also allow each heroine to be created with only one of the existing powers.
