Spree::Core::Engine.routes.draw do
  Spree::Core::Engine.add_routes do
		namespace :admin do
			resources :newsletters
		end	

		resources :newsletters
  end
end
