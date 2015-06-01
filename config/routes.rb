Rails.application.routes.draw do  
  get '/gifs/:id' => 'application#show'
  get 'Elmedina'=>'application#dina'
  get 'Eunice'=>'application#eunice'
  get 'Isabella'=>'application#Isabella'
  get '/new_gif' => 'application#new'
  get '/create_profile' => 'application#show'
    

end
