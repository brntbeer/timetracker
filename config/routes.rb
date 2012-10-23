Timetracker::Application.routes.draw do
  resources :customers do
    resources :invoices do
      resources :line_items
    end

    resources :todos
    resources :projects
    resources :time_logs do
      collection do
        put "merge"
        get "start"
        get "stop"
      end
    end
  end

 # map.connect '/', :controller => "customers"
  root :to => "customers#index"

end
