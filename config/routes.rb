Timetracker::Application.routes.draw do
  resources :customers do
    resources :invoices do
      resources :line_items
    end

    resources :todos
    resources :projects
    resources :time_logs, :collection => { :merge => :put, :start => :get, :stop  => :get }
  end

 # map.connect '/', :controller => "customers"
  root :to => "customers#index"

end
