Rails.application.routes.draw do
  get 'welcome/index'

  resources :venta

  resources :vendedor

  resources :v_venta

  resources :v_stock_insumo

  resources :v_resumen_vendedor

  resources :v_resumen_local

  resources :v_resumen_cliente

  resources :v_resumen_bodeguero

  resources :v_proveedor

  resources :v_orden_de_compra

  resources :v_guia_despacho

  resources :v_devolucion

  resources :usuario

  resources :transicion_estados_devolucion

  resources :transicion_estado_compra

  resources :tipo_insumo_propiedad

  resources :tipo_insumo

  resources :proveedor

  resources :propiedad_valor

  resources :propiedad

  resources :parametro

  resources :orden_de_compra

  resources :marca

  resources :log

  resources :local

  resources :insumo_local

  resources :insumo

  resources :guia_local_bodeguero

  resources :guia_de_despacho

  resources :estado_orden_de_compra

  resources :estado_devolucion

  resources :devolucion

  resources :detalle_venta

  resources :detalle_orden_de_compra

  resources :detalle_guia_de_despacho

  resources :detalle_devolucion

  resources :detalle_cotizacion

  resources :detalle_cambio_insumo

  resources :cotizacion

  resources :compatibilidad

  resources :codigo_proveedor

  resources :cliente

  resources :bodeguero

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
