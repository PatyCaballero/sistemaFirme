Rails.application.routes.draw do
  resources :reportes
  resources :presupuesto_creates
  resources :crea_presupuestos
  resources :crear_presupuestos
  resources :regis_guardia
  resources :puesto_registros
  resources :guardia_registros
  resources :clientes
  resources :presupuestos
  resources :lista_calendarios
  resources :calendarios
  resources :registro_puestos
  resources :registro_guardia
  resources :guardia
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
