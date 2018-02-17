Rails.application.routes.draw do
  

  resources :turnos

  resources :presupuestooos do
      member do
        get 'imprimir'
    end
  end
  
  resources :categorias
  resources :productos
  resources :control_stock
  resources :stock
  
  resources :puestos do
            member do
            get 'pdf'
          end
        end
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

  get 'lista_puestos/index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'regis_guardia#index'

  post 'stock/incStock'

end
