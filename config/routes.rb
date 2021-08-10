Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :students do
      resources :evaluations
    end
  end
end

end



