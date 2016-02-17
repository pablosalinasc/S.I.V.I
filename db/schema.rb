# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "bodeguero", primary_key: "ID_BODEGUERO", force: true do |t|
    t.integer "ID_LOCAL"
  end

  add_index "bodeguero", ["ID_LOCAL"], name: "FK_RELATIONSHIP_48", using: :btree

  create_table "cliente", primary_key: "ID_CLIENTE", force: true do |t|
    t.string   "NOMBRE_CLIENTE",           limit: 200, null: false
    t.string   "RUT_CLIENTE",              limit: 15,  null: false
    t.string   "CORREO_CLIENTE",           limit: 150
    t.string   "TELEFONO_CLIENTE",         limit: 20
    t.datetime "FECHA_NACIMIENTO_CLIENTE",             null: false
    t.float    "DESCUENTO_CLIENTE",        limit: 24,  null: false
  end

  create_table "codigo_proveedor", id: false, force: true do |t|
    t.integer "ID_PROVEEDOR",             null: false
    t.integer "ID_INSUMO",                null: false
    t.string  "CODIGO_INSUMO", limit: 32, null: false
  end

  add_index "codigo_proveedor", ["ID_INSUMO"], name: "FK_RELATIONSHIP_68", using: :btree

  create_table "compatibilidad", id: false, force: true do |t|
    t.integer "ID_MARCA",  null: false
    t.integer "ID_INSUMO", null: false
  end

  add_index "compatibilidad", ["ID_INSUMO"], name: "FK_REFERENCE_51", using: :btree

  create_table "cotizacion", primary_key: "ID_COTIZACION", force: true do |t|
    t.integer  "ID_PROVEEDOR",                      null: false
    t.datetime "FECHA_COTIZACION"
    t.float    "MONTO_TOTAL_COTIZACION", limit: 24
  end

  add_index "cotizacion", ["ID_PROVEEDOR"], name: "FK_RELATIONSHIP_22", using: :btree

  create_table "detalle_cambio_insumo", id: false, force: true do |t|
    t.integer "ID_DEVOLUCION",    null: false
    t.integer "LINEA_CAMBIO",     null: false
    t.integer "ID_INSUMO",        null: false
    t.integer "PRECIO_CAMBIO",    null: false
    t.integer "CANTIDAD_CAMBIO",  null: false
    t.integer "DESCUENTO_CAMBIO", null: false
  end

  add_index "detalle_cambio_insumo", ["ID_INSUMO"], name: "FK_RELATIONSHIP_38", using: :btree

  create_table "detalle_cotizacion", id: false, force: true do |t|
    t.integer "ID_COTIZACION",                  null: false
    t.integer "LINEA_COTIZACION",               null: false
    t.integer "ID_PROVEEDOR",                   null: false
    t.integer "ID_INSUMO",                      null: false
    t.string  "CODIGO_INSUMO",       limit: 32, null: false
    t.integer "CANTIDAD_COTIZACION",            null: false
    t.float   "PRECIO_COTIZACION",   limit: 24, null: false
  end

  add_index "detalle_cotizacion", ["ID_PROVEEDOR", "ID_INSUMO", "CODIGO_INSUMO"], name: "FK_RELATIONSHIP_66", using: :btree

  create_table "detalle_devolucion", id: false, force: true do |t|
    t.integer "ID_DEVOLUCION",      null: false
    t.integer "LINEA_DEVOLUCION",   null: false
    t.integer "ID_INSUMO",          null: false
    t.integer "CANTIDAD_PRODUCTOS", null: false
  end

  add_index "detalle_devolucion", ["ID_INSUMO"], name: "FK_RELATIONSHIP_36", using: :btree

  create_table "detalle_guia_de_despacho", id: false, force: true do |t|
    t.integer "ID_GUIA_DESPACHO",            null: false
    t.integer "LINEA_GUIA",                  null: false
    t.integer "ID_PROVEEDOR",                null: false
    t.integer "ID_INSUMO",                   null: false
    t.string  "CODIGO_INSUMO",    limit: 32, null: false
    t.integer "CANTIDAD_GUIA",               null: false
    t.float   "PRECIO_GUIA",      limit: 24, null: false
  end

  add_index "detalle_guia_de_despacho", ["ID_PROVEEDOR", "ID_INSUMO", "CODIGO_INSUMO"], name: "FK_RELATIONSHIP_63", using: :btree

  create_table "detalle_orden_de_compra", id: false, force: true do |t|
    t.integer "ID_COMPRA",                  null: false
    t.integer "LINEA_COMPRA",               null: false
    t.integer "ID_PROVEEDOR",               null: false
    t.integer "ID_INSUMO",                  null: false
    t.string  "CODIGO_INSUMO",   limit: 32, null: false
    t.integer "CANTIDAD_COMPRA",            null: false
    t.float   "PRECIO_COMPRA",   limit: 24, null: false
  end

  add_index "detalle_orden_de_compra", ["ID_PROVEEDOR", "ID_INSUMO", "CODIGO_INSUMO"], name: "FK_RELATIONSHIP_64", using: :btree

  create_table "detalle_venta", id: false, force: true do |t|
    t.integer "ID_VENTA",        null: false
    t.integer "LINEA_VENTA",     null: false
    t.integer "ID_INSUMO",       null: false
    t.integer "CANTIDAD_VENTA",  null: false
    t.integer "PRECIO_VENTA",    null: false
    t.integer "DESCUENTO_VENTA", null: false
  end

  add_index "detalle_venta", ["ID_INSUMO"], name: "FK_RELATIONSHIP_16", using: :btree

  create_table "devolucion", primary_key: "ID_DEVOLUCION", force: true do |t|
    t.integer  "ID_VENTA",                                   null: false
    t.integer  "ID_LOCAL",                                   null: false
    t.integer  "ID_VENDEDOR",                                null: false
    t.integer  "ID_ESTADO_DEVOLUCION",                       null: false
    t.datetime "FECHA_DEVOLUCION",                           null: false
    t.integer  "MONTO_CAMBIO"
    t.integer  "CANT_INSUMOS_NUEVOS_DEVOLUCION"
    t.string   "TIPO_DEVOLUCION",                limit: 30,  null: false
    t.string   "COMENTARIO_DEVOLUCION",          limit: 250
    t.boolean  "INSUMOS_DEFECTUOSOS_DEVOLUCION",             null: false
  end

  add_index "devolucion", ["ID_ESTADO_DEVOLUCION"], name: "FK_RELATIONSHIP_58", using: :btree
  add_index "devolucion", ["ID_LOCAL"], name: "FK_RELATIONSHIP_56", using: :btree
  add_index "devolucion", ["ID_VENDEDOR"], name: "FK_RELATIONSHIP_57", using: :btree
  add_index "devolucion", ["ID_VENTA"], name: "FK_RELATIONSHIP_34", using: :btree

  create_table "estado_devolucion", primary_key: "ID_ESTADO_DEVOLUCION", force: true do |t|
    t.string "DESCRIPCION_ESTADO_DEVOLUCION", limit: 300, null: false
  end

  create_table "estado_orden_de_compra", primary_key: "ID_ESTADO_COMPRA", force: true do |t|
    t.string "DESCRIPCION_ESTADO_COMPRA", limit: 150
  end

  create_table "guia_de_despacho", primary_key: "ID_GUIA_DESPACHO", force: true do |t|
    t.integer  "ID_COMPRA",                        null: false
    t.integer  "ID_PROVEEDOR",                     null: false
    t.datetime "FECHA_SALIDA_GUIA",                null: false
    t.datetime "FECHA_RECEPCION_GUIA",             null: false
    t.string   "TIPO_MOVIMIENTO_GUIA", limit: 15,  null: false
    t.string   "VEHICULO_GUIA",        limit: 50
    t.string   "DESTINO_GUIA",         limit: 100, null: false
    t.boolean  "DESPACHO_LOCAL_GUIA",              null: false
  end

  add_index "guia_de_despacho", ["ID_COMPRA"], name: "FK_RELATIONSHIP_25", using: :btree
  add_index "guia_de_despacho", ["ID_PROVEEDOR"], name: "FK_RELATIONSHIP_26", using: :btree

  create_table "guia_local_bodeguero", id: false, force: true do |t|
    t.integer "ID_LOCAL",         null: false
    t.integer "ID_BODEGUERO",     null: false
    t.integer "ID_GUIA_DESPACHO", null: false
  end

  add_index "guia_local_bodeguero", ["ID_BODEGUERO"], name: "FK_RELATIONSHIP_54", using: :btree
  add_index "guia_local_bodeguero", ["ID_GUIA_DESPACHO"], name: "FK_RELATIONSHIP_53", using: :btree

  create_table "insumo", primary_key: "ID_INSUMO", force: true do |t|
    t.integer "ID_TIPO_INSUMO",                  null: false
    t.integer "PRECIO_INSUMO",                   null: false
    t.string  "NOMBRE_UNICO_INSUMO", limit: 100, null: false
  end

  add_index "insumo", ["ID_TIPO_INSUMO"], name: "FK_RELATIONSHIP_13", using: :btree

  create_table "insumo_local", id: false, force: true do |t|
    t.integer "ID_INSUMO",          null: false
    t.integer "ID_LOCAL",           null: false
    t.integer "STOCK_INSUMO_LOCAL", null: false
  end

  add_index "insumo_local", ["ID_LOCAL"], name: "FK_RELATIONSHIP_50", using: :btree

  create_table "local", primary_key: "ID_LOCAL", force: true do |t|
    t.string "DIRECCION_LOCAL", limit: 200
  end

  create_table "log", primary_key: "ID_LOG", force: true do |t|
    t.integer  "ID_USUARIO_LOG"
    t.integer  "ID_TUPLA_LOG",                 null: false
    t.string   "NEW_VALUE_LOG",    limit: 500
    t.string   "OLD_VALUE_LOG",    limit: 500
    t.datetime "FECHA_LOG",                    null: false
    t.string   "NOMBRE_TABLA_LOG", limit: 30,  null: false
  end

  create_table "marca", primary_key: "ID_MARCA", force: true do |t|
    t.string "NOMBRE_MARCA", limit: 30, null: false
  end

  create_table "orden_de_compra", primary_key: "ID_COMPRA", force: true do |t|
    t.integer  "ID_PROVEEDOR",                  null: false
    t.integer  "ID_COTIZACION",                 null: false
    t.integer  "ID_ESTADO_COMPRA",              null: false
    t.datetime "FECHA_COMPRA",                  null: false
    t.float    "MONTO_TOTAL_COMPRA", limit: 24, null: false
  end

  add_index "orden_de_compra", ["ID_COTIZACION"], name: "FK_RELATIONSHIP_72", using: :btree
  add_index "orden_de_compra", ["ID_ESTADO_COMPRA"], name: "FK_RELATIONSHIP_29", using: :btree
  add_index "orden_de_compra", ["ID_PROVEEDOR"], name: "FK_RELATIONSHIP_19", using: :btree

  create_table "parametro", primary_key: "CODIGO_PARAMETRO", force: true do |t|
    t.string "NOMBRE_PARAMETRO", limit: 100, null: false
    t.string "VALOR_PARAMETRO",  limit: 100, null: false
  end

  create_table "propiedad", primary_key: "ID_PROPIEDAD", force: true do |t|
    t.string "NOMBRE_PROPIEDAD",        limit: 50,  null: false
    t.string "EJEMPLO_VALOR_PROPIEDAD", limit: 250
  end

  create_table "propiedad_valor", id: false, force: true do |t|
    t.integer "ID_PROPIEDAD",             null: false
    t.integer "ID_INSUMO",                null: false
    t.string  "VALOR",        limit: 250, null: false
  end

  add_index "propiedad_valor", ["ID_INSUMO"], name: "FK_RELATIONSHIP_14", using: :btree

  create_table "proveedor", primary_key: "ID_PROVEEDOR", force: true do |t|
    t.string "NOMBRE_PROVEEDOR",    limit: 150, null: false
    t.string "PAIS_PROVEEDOR",      limit: 50,  null: false
    t.string "CIUDAD_PROVEEDOR",    limit: 100, null: false
    t.string "DIRECCION_PROVEEDOR", limit: 200, null: false
    t.string "CORREO_PROVEEDOR",    limit: 100
  end

  create_table "tipo_insumo", primary_key: "ID_TIPO_INSUMO", force: true do |t|
    t.string  "NOMBRE_INSUMO",         limit: 100, null: false
    t.boolean "COMPATIBILIDAD_INSUMO",             null: false
  end

  create_table "tipo_insumo_propiedad", id: false, force: true do |t|
    t.integer "ID_PROPIEDAD",        null: false
    t.boolean "PRINCIPAL_PROPIEDAD", null: false
    t.integer "ID_TIPO_INSUMO",      null: false
  end

  add_index "tipo_insumo_propiedad", ["ID_TIPO_INSUMO"], name: "FK_RELATIONSHIP_10", using: :btree

  create_table "transicion_estado_compra", id: false, force: true do |t|
    t.integer "ID_ESTADO_COMPRA_DESDE", null: false
    t.integer "ID_ESTADO_COMPRA_HASTA", null: false
  end

  add_index "transicion_estado_compra", ["ID_ESTADO_COMPRA_HASTA"], name: "FK_RELATIONSHIP_27", using: :btree

  create_table "transicion_estados_devolucion", id: false, force: true do |t|
    t.integer "ID_ESTADO_DEVOLUCION_DESDE", null: false
    t.integer "ID_ESTADO_DEVOLUCION_HASTA", null: false
  end

  add_index "transicion_estados_devolucion", ["ID_ESTADO_DEVOLUCION_HASTA"], name: "FK_RELATIONSHIP_61", using: :btree

  create_table "usuario", primary_key: "ID_USUARIO", force: true do |t|
    t.string "NOMBRE_USUARIO",           limit: 200, null: false
    t.string "RUT_USUARIO",              limit: 15,  null: false
    t.date   "FECHA_NACIMIENTO_USUARIO",             null: false
    t.string "CORREO_USUARIO",           limit: 150, null: false
    t.string "TELEFONO_USUARIO",         limit: 12
    t.string "ROL_USUARIO",              limit: 1,   null: false
  end

  create_table "v_devolucion", id: false, force: true do |t|
    t.integer  "ID_DEVOLUCION",                              default: 0, null: false
    t.integer  "ID_VENTA",                                               null: false
    t.integer  "ID_LOCAL",                                               null: false
    t.integer  "ID_VENDEDOR",                                            null: false
    t.integer  "ID_ESTADO_DEVOLUCION",                                   null: false
    t.datetime "FECHA_DEVOLUCION",                                       null: false
    t.integer  "MONTO_CAMBIO"
    t.integer  "CANT_INSUMOS_NUEVOS_DEVOLUCION"
    t.string   "TIPO_DEVOLUCION",                limit: 30,              null: false
    t.string   "COMENTARIO_DEVOLUCION",          limit: 250
    t.boolean  "INSUMOS_DEFECTUOSOS_DEVOLUCION",                         null: false
    t.string   "NOMBRE_VENDEDOR",                limit: 200,             null: false
    t.string   "NOMBRE_CLIENTE",                 limit: 200,             null: false
    t.string   "ESTADO_ACTUAL",                  limit: 300,             null: false
    t.string   "DIRECCION_LOCAL",                limit: 200
  end

  create_table "v_guia_despacho", id: false, force: true do |t|
    t.integer  "ID_GUIA_DESPACHO",                       default: 0, null: false
    t.integer  "ID_COMPRA",                                          null: false
    t.integer  "ID_PROVEEDOR",                                       null: false
    t.datetime "FECHA_SALIDA_GUIA",                                  null: false
    t.datetime "FECHA_RECEPCION_GUIA",                               null: false
    t.string   "TIPO_MOVIMIENTO_GUIA",       limit: 15,              null: false
    t.string   "VEHICULO_GUIA",              limit: 50
    t.string   "DESTINO_GUIA",               limit: 100,             null: false
    t.boolean  "DESPACHO_LOCAL_GUIA",                                null: false
    t.string   "NOMBRE_BODEGUERO_ENCARGADO", limit: 200,             null: false
    t.string   "NOMBRE_PROVEEDOR",           limit: 150,             null: false
    t.string   "LOCAL_DESPACHO",             limit: 200
  end

  create_table "v_orden_de_compra", id: false, force: true do |t|
    t.integer  "ID_COMPRA",                      default: 0, null: false
    t.integer  "ID_PROVEEDOR",                               null: false
    t.integer  "ID_COTIZACION",                              null: false
    t.integer  "ID_ESTADO_COMPRA",                           null: false
    t.datetime "FECHA_COMPRA",                               null: false
    t.float    "MONTO_TOTAL_COMPRA", limit: 24,              null: false
    t.string   "NOMBRE_PROVEEDOR",   limit: 150,             null: false
    t.datetime "FECHA_COTIZACION"
    t.string   "ESTADO_ACTUAL",      limit: 150
  end

  create_table "v_proveedor", id: false, force: true do |t|
    t.integer "ID_PROVEEDOR",                           default: 0
    t.string  "NOMBRE_PROVEEDOR",           limit: 150
    t.string  "PAIS_PROVEEDOR",             limit: 50
    t.string  "CIUDAD_PROVEEDOR",           limit: 100
    t.string  "DIRECCION_PROVEEDOR",        limit: 200
    t.string  "CORREO_PROVEEDOR",           limit: 100
    t.integer "CANTIDAD_COTIZACIONES",      limit: 8,   default: 0, null: false
    t.integer "CANTIDAD_ORDENES_DE_COMPRA", limit: 8,   default: 0, null: false
  end

  create_table "v_resumen_bodeguero", id: false, force: true do |t|
    t.integer "ID_USUARIO",                   default: 0, null: false
    t.string  "NOMBRE_USUARIO",   limit: 200,             null: false
    t.string  "RUT_USUARIO",      limit: 15,              null: false
    t.string  "CORREO_USUARIO",   limit: 150,             null: false
    t.string  "TELEFONO_USUARIO", limit: 12
    t.integer "EDAD",             limit: 8
    t.integer "VENTAS",           limit: 8,   default: 0, null: false
    t.integer "COMPRAS",          limit: 8,   default: 0, null: false
  end

  create_table "v_resumen_cliente", id: false, force: true do |t|
    t.integer "ID_CLIENTE",                    default: 0, null: false
    t.string  "NOMBRE_CLIENTE",    limit: 200,             null: false
    t.string  "RUT_CLIENTE",       limit: 15,              null: false
    t.string  "CORREO_CLIENTE",    limit: 150
    t.string  "TELEFONO_CLIENTE",  limit: 20
    t.integer "EDAD",              limit: 8
    t.float   "DESCUENTO_CLIENTE", limit: 24,              null: false
    t.integer "VENTAS",            limit: 8,   default: 0, null: false
    t.integer "DEVOLUCIONES",      limit: 8,   default: 0, null: false
  end

  create_table "v_resumen_local", id: false, force: true do |t|
    t.integer "ID_LOCAL",                            default: 0, null: false
    t.string  "DIRECCION_LOCAL",         limit: 200
    t.integer "CANTIDAD_VENDEDORES",     limit: 8,   default: 0, null: false
    t.integer "CANTIDAD_BODEGUEROS",     limit: 8,   default: 0, null: false
    t.integer "VENTAS_ULTIMO_MES",       limit: 8,   default: 0, null: false
    t.integer "DEVOLUCIONES_ULTIMO_MES", limit: 8,   default: 0, null: false
  end

  create_table "v_resumen_vendedor", id: false, force: true do |t|
    t.integer "ID_USUARIO",                   default: 0, null: false
    t.string  "NOMBRE_USUARIO",   limit: 200,             null: false
    t.string  "RUT_USUARIO",      limit: 15,              null: false
    t.string  "CORREO_USUARIO",   limit: 150,             null: false
    t.string  "TELEFONO_USUARIO", limit: 12
    t.integer "EDAD",             limit: 8
    t.integer "VENTAS",           limit: 8,   default: 0, null: false
    t.integer "DEVOLUCIONES",     limit: 8,   default: 0, null: false
  end

  create_table "v_stock_insumo", id: false, force: true do |t|
    t.integer "ID_INSUMO",                      null: false
    t.string  "DIRECCION_LOCAL",    limit: 200
    t.integer "STOCK_INSUMO_LOCAL",             null: false
  end

  create_table "v_venta", id: false, force: true do |t|
    t.integer "ID_VENTA",                    default: 0, null: false
    t.string  "NOMBRE_VENDEDOR", limit: 200,             null: false
    t.string  "NOMBRE_CLIENTE",  limit: 200,             null: false
    t.string  "DIRECCION_LOCAL", limit: 200
  end

  create_table "vendedor", primary_key: "ID_VENDEDOR", force: true do |t|
    t.integer "ID_LOCAL"
  end

  add_index "vendedor", ["ID_LOCAL"], name: "FK_RELATIONSHIP_1", using: :btree

  create_table "venta", primary_key: "ID_VENTA", force: true do |t|
    t.integer  "ID_VENDEDOR"
    t.integer  "ID_LOCAL"
    t.integer  "ID_CLIENTE"
    t.datetime "FECHA_VENTA",                      null: false
    t.string   "FORMA_DE_PAGO_VENTA",   limit: 50, null: false
    t.integer  "DESCUENTO_TOTAL_VENTA",            null: false
    t.integer  "MONTO_TOTAL_VENTA",                null: false
    t.boolean  "DESPACHADA_VENTA",                 null: false
    t.integer  "ID_BODEGUERO_DESPACHO"
    t.integer  "NUMERO_BOLETA_VENTA",              null: false
  end

  add_index "venta", ["ID_BODEGUERO_DESPACHO"], name: "FK_RELATIONSHIP_71", using: :btree
  add_index "venta", ["ID_CLIENTE"], name: "FK_RELATIONSHIP_5", using: :btree
  add_index "venta", ["ID_LOCAL"], name: "FK_RELATIONSHIP_3", using: :btree
  add_index "venta", ["ID_VENDEDOR"], name: "FK_RELATIONSHIP_2", using: :btree

end
