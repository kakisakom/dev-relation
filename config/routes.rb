Rails.application.routes.draw do
	# config = Rails.application.config.baukis2

	# constraints host: config[:staff][:host] do
		namespace:staff, path: "" do
	   root "top#index"
		 get "login" => "sessions#new", as: :login
		 resource :session, only: [:create, :destroy]
		 resource :account, except: [ :new, :create, :destroy ]
		 resource :password, only: [ :show, :edit, :update ]
		 resources :customers
	 end
	# end
	
	# constraints host: config[:admin][:host] do
		namespace:admin, path: "admin" do
			root "top#index"
			get "login" => "sessions#new", as: :login
			resource :session, only: [:create, :destroy]
			resources :staff_members do
				resources :staff_events, only: [ :index ]
			end
			resources :staff_events, only: [ :index]
		end
	# end
	
	# constraints host: config[:customer][:host] do
		namespace:customer, path: "mypage" do
		 root "top#index"
		 get "login" => "sessions#new", as: :login
		 resource :session, only: [:create, :destroy]
		end
#   end
end
