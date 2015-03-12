Rails.application.routes.draw do
  
  root 'twiddit#index'
  post '/' => 'twiddit#index'

end
