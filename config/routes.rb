Timetracker::Application.routes.draw do |map|
  map.resources :customers do |customer|
    customer.resources :invoices do |invoice|
      invoice.resources :line_items
    end

    customer.resources :todos
    customer.resources :projects
    customer.resources :time_logs, :collection => { :merge => :put, :start => :get, :stop  => :put }
  end

 # map.connect '/', :controller => "customers"
  root :to => "customers#index"


  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
