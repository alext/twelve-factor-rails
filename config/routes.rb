Rails.application.routes.draw do

  root 'root#index'

  get '/slow' => 'root#slow'
end
