Rails.application.routes.draw do
  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "home/create" => 'home#create'
  post "home/:id/destroy" => 'home#destroy'
  post "home/:id/finish" => 'home#finish'
  post "home/:id/unfinish" => 'home#unfinish'
end
