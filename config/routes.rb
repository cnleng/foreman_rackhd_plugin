Rails.application.routes.draw do
  get 'new_action', to: 'foreman_rackhd_plugin/hosts#new_action'
  post 'books' => 'foreman_rackhd_plugin/hosts#update_racks'
end
