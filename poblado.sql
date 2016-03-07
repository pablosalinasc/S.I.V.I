INSERT INTO `sivi`.`cliente`
(
`NOMBRE_CLIENTE`,
`RUT_CLIENTE`,
`CORREO_CLIENTE`,
`TELEFONO_CLIENTE`,
`FECHA_NACIMIENTO_CLIENTE`,
`DESCUENTO_CLIENTE`)
VALUES
(
'Alberto Ceballos',
'10.345.331-0',
'alberto.ceballos@gmail.com',
225298394,
19830512,
0.0);

INSERT INTO `sivi`.`cliente`
(
`NOMBRE_CLIENTE`,
`RUT_CLIENTE`,
`CORREO_CLIENTE`,
`TELEFONO_CLIENTE`,
`FECHA_NACIMIENTO_CLIENTE`,
`DESCUENTO_CLIENTE`)
VALUES
(
'Roberta Acuña',
'12.342.210-0',
'roberta.acuña@gmail.com',
'',
19710102,
0.2);

INSERT INTO `sivi`.`cliente`
(
`NOMBRE_CLIENTE`,
`RUT_CLIENTE`,
`CORREO_CLIENTE`,
`TELEFONO_CLIENTE`,
`FECHA_NACIMIENTO_CLIENTE`,
`DESCUENTO_CLIENTE`)
VALUES
(
'Rafael Fernandez',
'16.242.151-2',
'rafael.fernandez@gmail.com',
'',
19901201,
0.2);

INSERT INTO `sivi`.`tipo_insumo`
(
`NOMBRE_INSUMO`,
`COMPATIBILIDAD_INSUMO`)
VALUES
(
'Disco',
false);

INSERT INTO `sivi`.`tipo_insumo`
(
`NOMBRE_INSUMO`,
`COMPATIBILIDAD_INSUMO`)
VALUES
(
'Tinta',
true);

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Capacidad',
'100 ml');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Tipo de tinta',
'Color');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Cantidad de botellas',
'3');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Tipo(s) cartucho(s)',
'Cyan Magenta Yellow');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Marca',
'Digital Transfer');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Tipo de impresora',
'CISS y Cartucho');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'País de procedencia',
'China');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Código fabricante',
'EIMB-290');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Fecha caducidad',
'Julio 2019');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Cantidad de unidades',
'Pack 10');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Formato',
'-R');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Velocidad de lectura/escritura',
'8x');

INSERT INTO `sivi`.`propiedad`
(
`NOMBRE_PROPIEDAD`,
`EJEMPLO_VALOR_PROPIEDAD`)
VALUES
(
'Tipo de disco',
'CD');

INSERT INTO `sivi`.`tipo_insumo_propiedad`
(`ID_PROPIEDAD`,
`PRINCIPAL_PROPIEDAD`,
`ID_TIPO_INSUMO`)
VALUES
(1,true,2),
(2,true,2),
(3,false,2),
(4,false,2),
(5,true,2),
(6,false,2),
(7,false,2),
(8,false,2),
(9,false,2);

INSERT INTO `sivi`.`tipo_insumo_propiedad`
(`ID_PROPIEDAD`,
`PRINCIPAL_PROPIEDAD`,
`ID_TIPO_INSUMO`)
VALUES
(13,true,1),
(11,true,1),
(12,false,1),
(10,true,1),
(5,true,1);

INSERT INTO `sivi`.`marca`
(
`NOMBRE_MARCA`)
VALUES
('Brother'),('Canon'),('Dell'),('Epson'),('HP'),('Lexmark'),('Olivetti'),('Samsung');

INSERT INTO `sivi`.`insumo`
(
`ID_TIPO_INSUMO`,
`PRECIO_INSUMO`,
`NOMBRE_UNICO_INSUMO`)
VALUES
(1,1200,'CD -R 8x Imation Pack10'),
(1,2200,'CD +R 16x Verbatim Pack25'),
(1,4800,'DVD -R 8x Verbatim Pack25'),
(2,5000,'Tinta Color Digital-Transfer 100ml'),
(2,2500,'Tinta Negro Digital-Transfer 100ml');

INSERT INTO `sivi`.`propiedad_valor`
(`ID_PROPIEDAD`,
`ID_INSUMO`,
`VALOR`)
VALUES
(13,1,'CD'),
(11,1,'-R'),
(12,1,'16x'),
(10,1,'Verbatim'),
(5,1,'Pack 10');

INSERT INTO `sivi`.`propiedad_valor`
(`ID_PROPIEDAD`,
`ID_INSUMO`,
`VALOR`)
VALUES
(13,2,'CD'),
(11,2,'+R'),
(12,2,'16x'),
(10,2,'Verbatim'),
(5,2,'Pack 25');

INSERT INTO `sivi`.`propiedad_valor`
(`ID_PROPIEDAD`,
`ID_INSUMO`,
`VALOR`)
VALUES
(13,3,'DVD'),
(11,3,'-R'),
(12,3,'8x'),
(10,3,'Verbatim'),
(5,3,'Pack 25');

INSERT INTO `sivi`.`propiedad_valor`
(`ID_PROPIEDAD`,
`ID_INSUMO`,
`VALOR`)
VALUES
(1,4,'100 ml'),
(2,4,'Color'),
(3,4,'3'),
(4,4,'Cyan Magenta Yellow'),
(5,4,'Digital Transfer'),
(6,4,'CISS y Cartucho'),
(7,4,'China'),
(8,4,'EIMB-290'),
(9,4,'Julio 2019');

INSERT INTO `sivi`.`propiedad_valor`
(`ID_PROPIEDAD`,
`ID_INSUMO`,
`VALOR`)
VALUES
(1,5,'100 ml'),
(2,5,'Negro'),
(3,5,'1'),
(4,5,'Negro'),
(5,5,'Digital Transfer'),
(6,5,'CISS y Cartucho'),
(7,5,'China'),
(8,5,'EIMB-290A'),
(9,5,'Julio 2019');

INSERT INTO `sivi`.`compatibilidad`
(`ID_MARCA`,
`ID_INSUMO`)
VALUES
(1,4),
(3,4),
(4,4),
(5,4),
(6,4),
(4,5);

INSERT INTO `sivi`.`local`
(`DIRECCION_LOCAL`)
VALUES
('Carmen 91 Santiago'),('Pocuro 115 Providencia'),('Calle 2 Recoleta');

INSERT INTO `sivi`.`insumo_local`
(`ID_INSUMO`,
`ID_LOCAL`,
`STOCK_INSUMO_LOCAL`)
VALUES
(1,1,500),(2,1,500),(3,1,500),(4,1,500),(5,1,500),(1,2,500),(2,2,500),(3,2,500),(4,2,500),(5,2,500),(1,3,500),(2,3,500),(3,3,500),(4,3,500),(5,3,500);

INSERT INTO `sivi`.`usuario`
(`NOMBRE_USUARIO`,
`RUT_USUARIO`,
`FECHA_NACIMIENTO_USUARIO`,
`TELEFONO_USUARIO`,
`ROL_USUARIO`,
`email`,
`encrypted_password`,
`reset_password_token`,
`reset_password_sent_at`,
`remember_created_at`,
`sign_in_count`,
`current_sign_in_at`,
`last_sign_in_at`,
`current_sign_in_ip`,
`last_sign_in_ip`)
VALUES
('Pablo Salinas','18455374-0',19930222,'3598633','V','pablo.salinas.cabanas@gmail.com',      '$2a$10$458okPZcLA7On6yLy5SmGefNtBFyfCoKkbsLVk5fKKyEymzktrwhW', NULL, NULL, NULL,'1',NULL, NULL,'127.0.0.1','127.0.0.1'),
('Nelson Andrés Jerez','18540150-2',19930721,'12341234','B','nelson.jerez@usach.cl',         '$2a$10$3XdKTFDqiOs/oNpr9NfMTekC.qonuN.HAqFC6qfAMbPdERIacI6p2', NULL, NULL, NULL,'1',NULL, NULL,'127.0.0.1','127.0.0.1'),
('Jorge Cocio','16913123-4',19760911,'12345678','A',	'jorge.cocio@usach.cl',	             '$2a$10$MvbjHgK3rzrAZC94eiMfiOBROjTkU5cwfO2.ydG1LgVNIJmlXYR92', NULL, NULL, NULL,'1',NULL, NULL,'127.0.0.1','127.0.0.1'),
('Jeison Hernandez','13244221-0',19780211,'12341233','V','jeison.hernandez@gmail.com',       '$2a$10$u8dkcbYe/RSWZLJqfIR/duALfLYffAy2g.oW4eHcJr0QRrnkED5WS', NULL, NULL, NULL,'1',NULL, NULL,'127.0.0.1','127.0.0.1'),
('Maicol Mesa','15134135-4',19870222,'12345454','V','maicol.mesa@gmail.com',                '$2a$10$ex3PJ5qE5xjnbNibqxOZpeZ5NfdXaG/n4ErEje7yp6IFfT1Y9.R32', NULL, NULL, NULL,'1',NULL, NULL,'127.0.0.1','127.0.0.1'),
('Gerson Tapia','17134164-0',19861221,'12345678','B','gerson.tapia@gmail.com',                '$2a$10$2DYgOLH5yCCKuXMXIMfimORIpf8v2gdMZqm0154n6UXxWbNZT4c.C', NULL, NULL, NULL,'1',NULL, NULL,'127.0.0.1','127.0.0.1'),
('Samir Abdul','18342154-4',19980713,'45656767','B','samir.abdula@gmail.com',                '$2a$10$T4uXXIiiUrvKrmQhBeGXpO8lrjoEBZ6XOxkN7MgeRM1N.Lqmy9v4y', NULL, NULL, NULL,'1',NULL, NULL,'127.0.0.1','127.0.0.1');

#Locales para cada usuario
UPDATE `sivi`.`vendedor`
SET
`ID_LOCAL` = 1 WHERE `ID_VENDEDOR` = 1;

UPDATE `sivi`.`bodeguero`
SET
`ID_LOCAL` = 1 WHERE `ID_BODEGUERO` = 2;

UPDATE `sivi`.`vendedor`
SET
`ID_LOCAL` = 2 WHERE `ID_VENDEDOR` = 4;

UPDATE `sivi`.`vendedor`
SET
`ID_LOCAL` = 3 WHERE `ID_VENDEDOR` = 5;

UPDATE `sivi`.`bodeguero`
SET
`ID_LOCAL` = 2 WHERE `ID_BODEGUERO` = 6;

UPDATE `sivi`.`bodeguero`
SET
`ID_LOCAL` = 3 WHERE `ID_BODEGUERO` = 7;

INSERT INTO `sivi`.`estado_devolucion`
(`DESCRIPCION_ESTADO_DEVOLUCION`)
VALUES
('INGRESANDO'),('REVISION'),('SIN DESPACHAR'),('DESPACHADO'),('ANULADO');

INSERT INTO `sivi`.`estado_orden_de_compra`
(`DESCRIPCION_ESTADO_COMPRA`)
VALUES
('INGRESANDO'),('ESPERANDO MERCANCIA'),('GUIA RECIBIDA'),('ALMACENADO PARCIALMENTE'),('ALMACENADO TOTALMENTE');

#Ventas

INSERT INTO `sivi`.`venta`
(`ID_VENDEDOR`,
`ID_LOCAL`,
`ID_CLIENTE`,
`FECHA_VENTA`,
`FORMA_DE_PAGO_VENTA`,
`DESCUENTO_TOTAL_VENTA`,
`MONTO_TOTAL_VENTA`,
`DESPACHADA_VENTA`,
`ID_BODEGUERO_DESPACHO`,
`NUMERO_BOLETA_VENTA`)
VALUES
(1,1,2,sysdate(),'Efectivo',0,7680,true,2,1223),
(1,1,3,sysdate(),'Cheque',0,9440,false,2,1226),
(5,3,1,sysdate(),'Tarjeta',0,4800,true,7,1231),
(4,2,1,sysdate(),'Efectivo',0,5000,true,6,1311);

INSERT INTO `sivi`.`detalle_venta`
(`ID_VENTA`,
`LINEA_VENTA`,
`ID_INSUMO`,
`CANTIDAD_VENTA`,
`PRECIO_VENTA`,
`DESCUENTO_VENTA`)
VALUES
(1,1,1,2,4800,960),
(2,1,1,2,1200,240),
(2,2,2,2,2200,440),
(2,3,4,1,5000,1000),
(3,1,3,1,4800,0),
(4,1,4,1,5000,0);

#Devoluciones

INSERT INTO `sivi`.`devolucion`
(`ID_VENTA`,
`ID_LOCAL`,
`ID_VENDEDOR`,
`ID_ESTADO_DEVOLUCION`,
`FECHA_DEVOLUCION`,
`MONTO_CAMBIO`,
`TIPO_DEVOLUCION`,
`INSUMOS_DEFECTUOSOS_DEVOLUCION`)
VALUES
(1,1,1,4,sysdate(),2400,'DEVOLUCION DEL DINERO',true);


INSERT INTO `sivi`.`devolucion`
(`ID_VENTA`,
`ID_LOCAL`,
`ID_VENDEDOR`,
`ID_ESTADO_DEVOLUCION`,
`FECHA_DEVOLUCION`,
`TIPO_DEVOLUCION`,
`COMENTARIO_DEVOLUCION`,
`INSUMOS_DEFECTUOSOS_DEVOLUCION`)
VALUES
(2,2,4,4,sysdate(),'REPOSICION INSUMOS','Al parecer hay una falla de fábrica',true);

INSERT INTO `sivi`.`devolucion`
(`ID_VENTA`,
`ID_LOCAL`,
`ID_VENDEDOR`,
`ID_ESTADO_DEVOLUCION`,
`FECHA_DEVOLUCION`,
`MONTO_CAMBIO`,
`CANT_INSUMOS_NUEVOS_DEVOLUCION`,
`TIPO_DEVOLUCION`,
`INSUMOS_DEFECTUOSOS_DEVOLUCION`)
VALUES
(3,3,5,4,sysdate(),400,2,'INSUMOS NUEVOS',false);

INSERT INTO `sivi`.`detalle_devolucion`
(`ID_DEVOLUCION`,
`LINEA_DEVOLUCION`,
`ID_INSUMO`,
`CANTIDAD_PRODUCTOS`)
VALUES
(1,1,1,2),
(2,1,2,2),
(3,1,1,1);

INSERT INTO `sivi`.`detalle_cambio_insumo`
(`ID_DEVOLUCION`,
`LINEA_CAMBIO`,
`ID_INSUMO`,
`PRECIO_CAMBIO`,
`CANTIDAD_CAMBIO`,
`DESCUENTO_CAMBIO`)
VALUES
(3,1,2,2200,2,0);



#Proveedores

INSERT INTO `sivi`.`proveedor`
(`ID_PROVEEDOR`,`NOMBRE_PROVEEDOR`,`PAIS_PROVEEDOR`,`CIUDAD_PROVEEDOR`,`DIRECCION_PROVEEDOR`,`CORREO_PROVEEDOR`)
VALUES
(1, 'Fernando Castillo','Chile','La Serena','Las lilas 285','fernando.castillo@gmail.com'),
(2, 'Jose Canseco', 'Chile', 'Rancagua', 'titirilquen 285', 'jose.canseco@gmail.com'),
(3, 'John Wilkers booth','Chile','La Serena','Las lilas 285','fernando.castillo@gmail.com'),
(4, 'Constanza Valdebenito','Chile','Santiago','Borodin 285','constanza.valdebenito@gmail.com');

#Cotizaciones

INSERT INTO `sivi`.`cotizacion`
(`ID_COTIZACION`,`ID_PROVEEDOR`,`FECHA_COTIZACION`,`MONTO_TOTAL_COTIZACION`)
VALUES
(1,1,20160115,14400),
(2,2,20160115,13800),
(3,3,20160115,14000),
(4,4,20160115,13000);

#Código proveedor

INSERT INTO `sivi`.`codigo_proveedor`
(`ID_PROVEEDOR`,
`ID_INSUMO`,
`CODIGO_INSUMO`)
VALUES
(1,1,'h234'),
(1,2,'h235'),
(1,3,'h236'),
(1,4,'h237'),
(1,5,'h238'),
(2,1,'xb7'),
(2,2,'xb8'),
(2,3,'xb9'),
(2,4,'xb10'),
(2,5,'xb11'),
(3,1,'pr45'),
(3,2,'pr46'),
(3,3,'pr47'),
(3,4,'pr48'),
(3,5,'pr49'),
(4,1,'PO15'),
(4,2,'PO16'),
(4,3,'PO17'),
(4,4,'PO18'),
(4,5,'PO19');

#Detalle cotizacion

INSERT INTO `sivi`.`detalle_cotizacion`
(`ID_COTIZACION`,
`LINEA_COTIZACION`,
`ID_CODIGO_PROVEEDOR`,
`CANTIDAD_COTIZACION`,
`PRECIO_COTIZACION`)
VALUES
(1,1,1,1,1000),
(1,2,2,1,2000),
(1,3,3,1,4600),
(1,4,4,1,4600),
(1,5,5,1,2200),
(2,1,6,1,900),
(2,2,7,1,2100),
(2,3,8,1,4400),
(2,4,9,1,4300),
(2,5,10,1,2100),
(3,1,11,1,1000),
(3,2,12,1,2000),
(3,3,13,1,4500),
(3,4,14,1,4300),
(3,5,15,1,2200),
(4,1,16,1,900),
(4,2,17,1,1900),
(4,3,18,1,4200),
(4,4,19,1,4100),
(4,5,20,1,1900);

#Orden de compra

INSERT INTO `sivi`.`orden_de_compra`
(`ID_COMPRA`,`ID_PROVEEDOR`,`ID_COTIZACION`,`ID_ESTADO_COMPRA`,`FECHA_COMPRA`,`MONTO_TOTAL_COMPRA`)
VALUES
(1,4,4,5,20160117,6500000),#una compra de un local
(2,4,4,5,20160117,6500000),#una compra de un local
(3,4,4,5,20160117,6500000);#una compra de un local

#Detalle orden de compra

INSERT INTO `sivi`.`detalle_orden_de_compra`
(`ID_COMPRA`,
`LINEA_COMPRA`,
`ID_CODIGO_PROVEEDOR`,
`CANTIDAD_COMPRA`,
`PRECIO_COMPRA`)
VALUES
(1 ,1 ,16,500 ,900 ),
(1 ,2 ,17 ,500 ,1900),
(1 ,3 ,18 ,500 ,4200),
(1 ,4 ,19 ,500 ,4100),
(1 ,5 ,20 ,500 ,1900),
(2 ,1 ,16,500 ,900 ),
(2 ,2 ,17 ,500 ,1900),
(2 ,3 ,18 ,500 ,4200),
(2 ,4 ,19 ,500 ,4100),
(2 ,5 ,20 ,500 ,1900),
(3 ,1 ,16 ,500 ,900 ),
(3 ,2 ,17 ,500 ,1900),
(3 ,3 ,18 ,500 ,4200),
(3 ,4 ,19 ,500 ,4100),
(3 ,5 ,20 ,500 ,1900);

#Transicion estados de compra

INSERT INTO `sivi`.`transicion_estado_compra`
(`ID_ESTADO_COMPRA_DESDE`,`ID_ESTADO_COMPRA_HASTA`)
VALUES
(1,2),
(2,3),
(3,4),
(4,5),
(4,2);

INSERT INTO `sivi`.`transicion_estados_devolucion`
(`ID_ESTADO_DEVOLUCION_DESDE`,
`ID_ESTADO_DEVOLUCION_HASTA`)
VALUES
(1,2),
(1,3),
(2,3),
(2,5),
(3,4);


#Guia de despacho

INSERT INTO `sivi`.`guia_de_despacho`
(
`ID_COMPRA`,
`ID_PROVEEDOR`,
`FECHA_SALIDA_GUIA`,
`FECHA_RECEPCION_GUIA`,
`TIPO_MOVIMIENTO_GUIA`,
`VEHICULO_GUIA`,
`DESTINO_GUIA`,
`DESPACHO_LOCAL_GUIA`)
VALUES
(1,4,20160117100000,20160117160000,'Traslado','','',true),
(2,4,20160117100500,20160117150000,'Traslado','','',true),
(3,4,20160117101000,20160117170000,'Traslado','','',true);

#Detalle guia de despacho

INSERT INTO `sivi`.`detalle_guia_de_despacho`
(`ID_GUIA_DESPACHO`,
`LINEA_GUIA`,
`ID_CODIGO_PROVEEDOR`,
`CANTIDAD_GUIA`,
`PRECIO_GUIA`)
VALUES
(1,1,16,500,900 ),
(1,2,17,500,1900),
(1,3,18,500,4200),
(1,4,19,500,4100),
(1,5,20,500,1900),
(2,1,16,500,900 ),
(2,2,17,500,1900),
(2,3,18,500,4200),
(2,4,19,500,4100),
(2,5,20,500,1900),
(3,1,16,500,900 ),
(3,2,17,500,1900),
(3,3,18,500,4200),
(3,4,19,500,4100),
(3,5,20,500,1900);

#Guia local bodeguero

INSERT INTO `sivi`.`guia_local_bodeguero`
(`ID_LOCAL`,`ID_BODEGUERO`,`ID_GUIA_DESPACHO`)
VALUES
(1,2,1),
(2,6,2),
(3,7,3);
