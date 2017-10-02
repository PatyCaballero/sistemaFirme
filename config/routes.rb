Rails.application.routes.draw do
  
  resources :stock
  resources :puestos
  resources :clientes
  resources :asignar_puestos
  resources :registro_clientes
  resources :reportes
  resources :presupuesto_creates
  resources :crea_presupuestos
  resources :crear_presupuestos
  resources :regis_guardia
  resources :puesto_registros
  resources :guardia_registros
  resources :presupuestos
  resources :lista_calendarios
  resources :calendarios
  resources :registro_puestos

  get 'regis_guardia/index'
  get 'regis_guardia/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'regis_guardia#index'
end
