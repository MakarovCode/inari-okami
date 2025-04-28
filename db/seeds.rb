#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

rails g model payment order:references payment_method:references amount:float service_amount:float status:integer
rails g migration AddReceiptsToOrders receipts:jsonb
rails g model register_log action:integer cash:float amounts:jsonb status:integer active_admin:references
rails g model employee name document phone email payment_method:references account_number status:integer
rails g model employee_log employee:references service_amount:float status:integer active_admin:references
rails g migration AddMinUnitsToSupplies min_amount:float
rails g migration AddUuidAndTokenToAdminUsers uuid:string:uniq token:string:uniq

# El cierre de caja debe generar los registros de propina (employee log) para los empleados que trabajaron ese dia
# Informe de propinas, marcar propinas como pagadas
# Nueva vista de pedidos
## dos columnas, una de todos los pedidos, otra con el pedido para edicion y la lista de recibos impresos
### Imprimir receipt, Imprimir comanda total, Imprimir recibo, Abrir caja
# supply add min_units
# Informe de agotados en dashboard
# Arreglar filtros por time zones