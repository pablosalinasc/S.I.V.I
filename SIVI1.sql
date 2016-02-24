/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     14-02-2016 22:25:19                          */
/*==============================================================*/

DROP DATABASE IF EXISTS SIVI;

CREATE DATABASE SIVI;

USE SIVI;

/*==============================================================*/
/* Table: BODEGUERO                                             */
/*==============================================================*/
CREATE TABLE BODEGUERO
(
   ID_BODEGUERO         INT NOT NULL,
   ID_LOCAL             INT,
   PRIMARY KEY (ID_BODEGUERO)
);

ALTER TABLE BODEGUERO COMMENT 'Bodeguero, que trabaja en la bodega de cierto local y realiz';

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
CREATE TABLE CLIENTE
(
   ID_CLIENTE           INT NOT NULL AUTO_INCREMENT,
   NOMBRE_CLIENTE       VARCHAR(200) NOT NULL,
   RUT_CLIENTE          VARCHAR(15) NOT NULL,
   CORREO_CLIENTE       VARCHAR(150),
   TELEFONO_CLIENTE     VARCHAR(20),
   FECHA_NACIMIENTO_CLIENTE DATETIME NOT NULL,
   DESCUENTO_CLIENTE    FLOAT(3) NOT NULL,
   PRIMARY KEY (ID_CLIENTE)
);

ALTER TABLE CLIENTE COMMENT 'Cliente que tenga registrada una compra en el sistema, o sea';

/*==============================================================*/
/* Table: CODIGO_PROVEEDOR                                      */
/*==============================================================*/
CREATE TABLE CODIGO_PROVEEDOR
(
   ID_PROVEEDOR         INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   CODIGO_INSUMO        VARCHAR(32) NOT NULL,
   PRIMARY KEY (ID_PROVEEDOR, ID_INSUMO, CODIGO_INSUMO)
);

ALTER TABLE CODIGO_PROVEEDOR COMMENT 'Codigo de un insumo que entrega un proveedor';

/*==============================================================*/
/* Table: COMPATIBILIDAD                                        */
/*==============================================================*/
CREATE TABLE COMPATIBILIDAD
(
   ID_MARCA             INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   PRIMARY KEY (ID_MARCA, ID_INSUMO)
);

ALTER TABLE COMPATIBILIDAD COMMENT 'Entidad intermedia, entre el tipo de insumo con compatibilid';

/*==============================================================*/
/* Table: COTIZACION                                            */
/*==============================================================*/
CREATE TABLE COTIZACION
(
   ID_COTIZACION        INT NOT NULL AUTO_INCREMENT,
   ID_PROVEEDOR         INT NOT NULL,
   FECHA_COTIZACION     DATETIME,
   MONTO_TOTAL_COTIZACION FLOAT,
   PRIMARY KEY (ID_COTIZACION)
);

ALTER TABLE COTIZACION COMMENT 'Cotización generada por un proveedor, en cierto momento, que';

/*==============================================================*/
/* Table: DETALLE_CAMBIO_INSUMO                                 */
/*==============================================================*/
CREATE TABLE DETALLE_CAMBIO_INSUMO
(
   ID_DEVOLUCION        INT NOT NULL,
   LINEA_CAMBIO         INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   PRECIO_CAMBIO        INT NOT NULL,
   CANTIDAD_CAMBIO      INT NOT NULL,
   DESCUENTO_CAMBIO     INT NOT NULL,
   PRIMARY KEY (ID_DEVOLUCION, LINEA_CAMBIO)
);

ALTER TABLE DETALLE_CAMBIO_INSUMO COMMENT 'Detalle de la lista de insumos, producto del cambio de insum';

/*==============================================================*/
/* Table: DETALLE_COTIZACION                                    */
/*==============================================================*/
CREATE TABLE DETALLE_COTIZACION
(
   ID_COTIZACION        INT NOT NULL,
   LINEA_COTIZACION     INT NOT NULL,
   ID_PROVEEDOR         INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   CODIGO_INSUMO        VARCHAR(32) NOT NULL,
   CANTIDAD_COTIZACION  INT NOT NULL,
   PRECIO_COTIZACION    FLOAT NOT NULL,
   PRIMARY KEY (ID_COTIZACION, LINEA_COTIZACION)
);

ALTER TABLE DETALLE_COTIZACION COMMENT 'Detalle de los datos de un insumo en una cotizacion, donde s';

/*==============================================================*/
/* Table: DETALLE_DEVOLUCION                                    */
/*==============================================================*/
CREATE TABLE DETALLE_DEVOLUCION
(
   ID_DEVOLUCION        INT NOT NULL,
   LINEA_DEVOLUCION     INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   CANTIDAD_PRODUCTOS   INT NOT NULL,
   PRIMARY KEY (ID_DEVOLUCION, LINEA_DEVOLUCION)
);

ALTER TABLE DETALLE_DEVOLUCION COMMENT 'Detalle de los insumos defectuosos, que son subconjunto de l';

/*==============================================================*/
/* Table: DETALLE_GUIA_DE_DESPACHO                              */
/*==============================================================*/
CREATE TABLE DETALLE_GUIA_DE_DESPACHO
(
   ID_GUIA_DESPACHO     INT NOT NULL,
   LINEA_GUIA           INT NOT NULL,
   ID_PROVEEDOR         INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   CODIGO_INSUMO        VARCHAR(32) NOT NULL,
   CANTIDAD_GUIA        INT NOT NULL,
   PRECIO_GUIA          FLOAT NOT NULL,
   PRIMARY KEY (ID_GUIA_DESPACHO, LINEA_GUIA)
);

ALTER TABLE DETALLE_GUIA_DE_DESPACHO COMMENT 'Detalle de una guia de despacho, para cierto insumo.';

/*==============================================================*/
/* Table: DETALLE_ORDEN_DE_COMPRA                               */
/*==============================================================*/
CREATE TABLE DETALLE_ORDEN_DE_COMPRA
(
   ID_COMPRA            INT NOT NULL,
   LINEA_COMPRA         INT NOT NULL,
   ID_PROVEEDOR         INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   CODIGO_INSUMO        VARCHAR(32) NOT NULL,
   CANTIDAD_COMPRA      INT NOT NULL,
   PRECIO_COMPRA        FLOAT NOT NULL,
   PRIMARY KEY (ID_COMPRA, LINEA_COMPRA)
);

ALTER TABLE DETALLE_ORDEN_DE_COMPRA COMMENT 'Detalle de una orden de compra, para cierto insumo.';

/*==============================================================*/
/* Table: DETALLE_VENTA                                         */
/*==============================================================*/
CREATE TABLE DETALLE_VENTA
(
   ID_VENTA             INT NOT NULL,
   LINEA_VENTA          INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   CANTIDAD_VENTA       INT NOT NULL,
   PRECIO_VENTA         INT NOT NULL,
   DESCUENTO_VENTA      INT NOT NULL,
   PRIMARY KEY (ID_VENTA, LINEA_VENTA)
);

ALTER TABLE DETALLE_VENTA COMMENT 'Detalle de cierta venta, para cierto insumo, donde se define';

/*==============================================================*/
/* Table: DEVOLUCION                                            */
/*==============================================================*/
CREATE TABLE DEVOLUCION
(
   ID_DEVOLUCION        INT NOT NULL AUTO_INCREMENT,
   ID_VENTA             INT NOT NULL,
   ID_LOCAL             INT NOT NULL,
   ID_VENDEDOR           INT NOT NULL,
   ID_ESTADO_DEVOLUCION INT NOT NULL,
   FECHA_DEVOLUCION     DATETIME NOT NULL,
   MONTO_CAMBIO         INT,
   CANT_INSUMOS_NUEVOS_DEVOLUCION INT,
   TIPO_DEVOLUCION      VARCHAR(30) NOT NULL,
   COMENTARIO_DEVOLUCION VARCHAR(250),
   INSUMOS_DEFECTUOSOS_DEVOLUCION BOOL NOT NULL,
   PRIMARY KEY (ID_DEVOLUCION)
);

ALTER TABLE DEVOLUCION COMMENT 'Devolución de insumos defectuosos, asociado a una venta. Exi';

/*==============================================================*/
/* Table: ESTADO_DEVOLUCION                                     */
/*==============================================================*/
CREATE TABLE ESTADO_DEVOLUCION
(
   ID_ESTADO_DEVOLUCION INT NOT NULL AUTO_INCREMENT,
   DESCRIPCION_ESTADO_DEVOLUCION VARCHAR(300) NOT NULL,
   PRIMARY KEY (ID_ESTADO_DEVOLUCION)
);

ALTER TABLE ESTADO_DEVOLUCION COMMENT 'Estado que puede tener una devolución en un momento determin';

/*==============================================================*/
/* Table: ESTADO_ORDEN_DE_COMPRA                                */
/*==============================================================*/
CREATE TABLE ESTADO_ORDEN_DE_COMPRA
(
   ID_ESTADO_COMPRA     INT NOT NULL AUTO_INCREMENT,
   DESCRIPCION_ESTADO_COMPRA VARCHAR(150),
   PRIMARY KEY (ID_ESTADO_COMPRA)
);

ALTER TABLE ESTADO_ORDEN_DE_COMPRA COMMENT 'Estado en que está en cierto momento una orden de compra.';

/*==============================================================*/
/* Table: GUIA_DE_DESPACHO                                      */
/*==============================================================*/
CREATE TABLE GUIA_DE_DESPACHO
(
   ID_GUIA_DESPACHO     INT NOT NULL AUTO_INCREMENT,
   ID_COMPRA            INT NOT NULL,
   ID_PROVEEDOR         INT NOT NULL,
   FECHA_SALIDA_GUIA    DATETIME NOT NULL,
   FECHA_RECEPCION_GUIA DATETIME NOT NULL,
   TIPO_MOVIMIENTO_GUIA VARCHAR(15) NOT NULL,
   VEHICULO_GUIA        VARCHAR(50),
   DESTINO_GUIA         VARCHAR(100) NOT NULL,
   DESPACHO_LOCAL_GUIA  BOOL NOT NULL,
   PRIMARY KEY (ID_GUIA_DESPACHO)
);

ALTER TABLE GUIA_DE_DESPACHO COMMENT 'Guías de despacho que emite el proveedor y el local de desti';

/*==============================================================*/
/* Table: GUIA_LOCAL_BODEGUERO                                  */
/*==============================================================*/
CREATE TABLE GUIA_LOCAL_BODEGUERO
(
   ID_LOCAL             INT NOT NULL,
   ID_BODEGUERO         INT NOT NULL,
   ID_GUIA_DESPACHO     INT NOT NULL,
   PRIMARY KEY (ID_LOCAL, ID_BODEGUERO, ID_GUIA_DESPACHO)
);

ALTER TABLE GUIA_LOCAL_BODEGUERO COMMENT 'Asocia una guía de despacho con un bodeguero, en un local de';

/*==============================================================*/
/* Table: INSUMO                                                */
/*==============================================================*/
CREATE TABLE INSUMO
(
   ID_INSUMO            INT NOT NULL AUTO_INCREMENT,
   ID_TIPO_INSUMO       INT NOT NULL,
   PRECIO_INSUMO        INT NOT NULL,
   COMPATIBILIDAD_INSUMO BOOLEAN NOT NULL,
   NOMBRE_UNICO_INSUMO  VARCHAR(100) NOT NULL,
   PRIMARY KEY (ID_INSUMO)
);

ALTER TABLE INSUMO COMMENT 'Insumo específico que posee valores para las propiedades del';

/*==============================================================*/
/* Table: INSUMO_LOCAL                                          */
/*==============================================================*/
CREATE TABLE INSUMO_LOCAL
(
   ID_INSUMO            INT NOT NULL,
   ID_LOCAL             INT NOT NULL,
   STOCK_INSUMO_LOCAL   INT NOT NULL,
   PRIMARY KEY (ID_INSUMO, ID_LOCAL)
);

ALTER TABLE INSUMO_LOCAL COMMENT 'Especificación del stock de un insumo en cada local';

/*==============================================================*/
/* Table: LOCAL                                                 */
/*==============================================================*/
CREATE TABLE LOCAL
(
   ID_LOCAL             INT NOT NULL AUTO_INCREMENT,
   DIRECCION_LOCAL      VARCHAR(200),
   PRIMARY KEY (ID_LOCAL)
);

ALTER TABLE LOCAL COMMENT 'Locales donde se comercializan los insumos, el cual posee un';

/*==============================================================*/
/* Table: LOG                                                   */
/*==============================================================*/
CREATE TABLE LOG
(
   ID_LOG               INT NOT NULL AUTO_INCREMENT,
   ID_USUARIO_LOG       INT,
   ID_TUPLA_LOG         INT NOT NULL,
   NEW_VALUE_LOG        VARCHAR(500),
   OLD_VALUE_LOG        VARCHAR(500),
   FECHA_LOG            DATETIME NOT NULL,
   NOMBRE_TABLA_LOG     VARCHAR(30) NOT NULL,
   PRIMARY KEY (ID_LOG)
);

ALTER TABLE LOG COMMENT 'Registro de cada acción realizada en la base de datos';

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
CREATE TABLE MARCA
(
   ID_MARCA             INT NOT NULL AUTO_INCREMENT,
   NOMBRE_MARCA         VARCHAR(30) NOT NULL,
   PRIMARY KEY (ID_MARCA)
);

ALTER TABLE MARCA COMMENT 'Posee la marca de cada impresora, para poder hacer la compat';

/*==============================================================*/
/* Table: ORDEN_DE_COMPRA                                       */
/*==============================================================*/
CREATE TABLE ORDEN_DE_COMPRA
(
   ID_COMPRA            INT NOT NULL AUTO_INCREMENT,
   ID_PROVEEDOR         INT NOT NULL,
   ID_COTIZACION		INT NOT NULL,
   ID_ESTADO_COMPRA     INT NOT NULL,
   FECHA_COMPRA         DATETIME NOT NULL,
   MONTO_TOTAL_COMPRA   FLOAT NOT NULL,
   PRIMARY KEY (ID_COMPRA)
);

ALTER TABLE ORDEN_DE_COMPRA COMMENT 'Orden de compra que realiza la empresa a cierto proveedor, q';

/*==============================================================*/
/* Table: PARAMETRO                                             */
/*==============================================================*/
CREATE TABLE PARAMETRO
(
   CODIGO_PARAMETRO     INT NOT NULL AUTO_INCREMENT,
   NOMBRE_PARAMETRO     VARCHAR(100) NOT NULL,
   VALOR_PARAMETRO      VARCHAR(100) NOT NULL,
   PRIMARY KEY (CODIGO_PARAMETRO)
);

ALTER TABLE PARAMETRO COMMENT 'Configuración de datos que utiliza la base de datos y la apl';

/*==============================================================*/
/* Table: PROPIEDAD                                             */
/*==============================================================*/
CREATE TABLE PROPIEDAD
(
   ID_PROPIEDAD         INT NOT NULL AUTO_INCREMENT,
   NOMBRE_PROPIEDAD     VARCHAR(50) NOT NULL,
   EJEMPLO_VALOR_PROPIEDAD VARCHAR(250),
   PRIMARY KEY (ID_PROPIEDAD)
);

ALTER TABLE PROPIEDAD COMMENT 'Lista de todas las propiedades posibles de un tipo de insumo';

/*==============================================================*/
/* Table: PROPIEDAD_VALOR                                       */
/*==============================================================*/
CREATE TABLE PROPIEDAD_VALOR
(
   ID_PROPIEDAD         INT NOT NULL,
   ID_INSUMO            INT NOT NULL,
   VALOR                VARCHAR(250) NOT NULL,
   PRIMARY KEY (ID_PROPIEDAD, ID_INSUMO)
);

ALTER TABLE PROPIEDAD_VALOR COMMENT 'Entidad intermedia entre Insumo y Propiedad, donde están los';

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
CREATE TABLE PROVEEDOR
(
   ID_PROVEEDOR         INT NOT NULL AUTO_INCREMENT,
   NOMBRE_PROVEEDOR     VARCHAR(150) NOT NULL,
   PAIS_PROVEEDOR       VARCHAR(50) NOT NULL,
   CIUDAD_PROVEEDOR     VARCHAR(100) NOT NULL,
   DIRECCION_PROVEEDOR  VARCHAR(200) NOT NULL,
   CORREO_PROVEEDOR     VARCHAR(100),
   PRIMARY KEY (ID_PROVEEDOR)
);

ALTER TABLE PROVEEDOR COMMENT 'Proveedor de insumos a nuestra empresa, que genera cotizacio';

/*==============================================================*/
/* Table: TIPO_INSUMO                                           */
/*==============================================================*/
CREATE TABLE TIPO_INSUMO
(
   ID_TIPO_INSUMO       INT NOT NULL AUTO_INCREMENT,
   NOMBRE_INSUMO        VARCHAR(100) NOT NULL,
   COMPATIBILIDAD_INSUMO BOOL NOT NULL,
   PRIMARY KEY (ID_TIPO_INSUMO)
);

ALTER TABLE TIPO_INSUMO COMMENT 'Representa los distintos tipos de insumos que se pueden vend';

/*==============================================================*/
/* Table: TIPO_INSUMO_PROPIEDAD                                 */
/*==============================================================*/
CREATE TABLE TIPO_INSUMO_PROPIEDAD
(
   ID_PROPIEDAD         INT NOT NULL,
   PRINCIPAL_PROPIEDAD  BOOL NOT NULL,
   ID_TIPO_INSUMO       INT NOT NULL,
   PRIMARY KEY (ID_PROPIEDAD, ID_TIPO_INSUMO)
);

ALTER TABLE TIPO_INSUMO_PROPIEDAD COMMENT 'Subconjunto de propiedades elegidas para cierto tipo de insu';

/*==============================================================*/
/* Table: TRANSICION_ESTADOS_DEVOLUCION                         */
/*==============================================================*/
CREATE TABLE TRANSICION_ESTADOS_DEVOLUCION
(
   ID_ESTADO_DEVOLUCION_DESDE INT NOT NULL,
   ID_ESTADO_DEVOLUCION_HASTA INT NOT NULL,
   PRIMARY KEY (ID_ESTADO_DEVOLUCION_DESDE, ID_ESTADO_DEVOLUCION_HASTA)
);

ALTER TABLE TRANSICION_ESTADOS_DEVOLUCION COMMENT 'Estados entre los que puede pasar las devoluciones';

/*==============================================================*/
/* Table: TRANSICION_ESTADO_COMPRA                              */
/*==============================================================*/
CREATE TABLE TRANSICION_ESTADO_COMPRA
(
   ID_ESTADO_COMPRA_DESDE INT NOT NULL,
   ID_ESTADO_COMPRA_HASTA INT NOT NULL,
   PRIMARY KEY (ID_ESTADO_COMPRA_DESDE, ID_ESTADO_COMPRA_HASTA)
);

ALTER TABLE TRANSICION_ESTADO_COMPRA COMMENT 'Entidad que define las transiciones posibles entre los estad';

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
CREATE TABLE USUARIO
(
  `ID_USUARIO` int(11) NOT NULL auto_increment,
  `NOMBRE_USUARIO` varchar(200) NOT NULL,
  `RUT_USUARIO` varchar(15) NOT NULL,
  `FECHA_NACIMIENTO_USUARIO` date NOT NULL,
  `TELEFONO_USUARIO` varchar(12) DEFAULT NULL,
  `ROL_USUARIO` varchar(1) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
   PRIMARY KEY (ID_USUARIO)
);

/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
CREATE TABLE VENDEDOR
(
   ID_VENDEDOR          INT NOT NULL,
   ID_LOCAL             INT,
   PRIMARY KEY (ID_VENDEDOR)
);

ALTER TABLE VENDEDOR COMMENT 'Vendedores, que trabajan en cierto local y realizan ventas y';

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
CREATE TABLE VENTA
(
   ID_VENTA             INT NOT NULL AUTO_INCREMENT,
   ID_VENDEDOR           INT,
   ID_LOCAL             INT,
   ID_CLIENTE           INT,
   FECHA_VENTA          DATETIME NOT NULL,
   FORMA_DE_PAGO_VENTA  VARCHAR(50) NOT NULL,
   DESCUENTO_TOTAL_VENTA INT NOT NULL,
   MONTO_TOTAL_VENTA    INT NOT NULL,
   DESPACHADA_VENTA     BOOL NOT NULL,
   ID_BODEGUERO_DESPACHO INT,
   NUMERO_BOLETA_VENTA  INT NOT NULL,
   PRIMARY KEY (ID_VENTA)
);

ALTER TABLE VENTA COMMENT 'Venta de los insumos, que realiza cierto vendedor, en cierto';

ALTER TABLE BODEGUERO ADD CONSTRAINT FK_RELATIONSHIP_48 FOREIGN KEY (ID_LOCAL)
      REFERENCES LOCAL (ID_LOCAL) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE BODEGUERO ADD CONSTRAINT FK_RELATIONSHIP_52 FOREIGN KEY (ID_BODEGUERO)
      REFERENCES USUARIO (ID_USUARIO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE CODIGO_PROVEEDOR ADD CONSTRAINT FK_RELATIONSHIP_65 FOREIGN KEY (ID_PROVEEDOR)
      REFERENCES PROVEEDOR (ID_PROVEEDOR) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE CODIGO_PROVEEDOR ADD CONSTRAINT FK_RELATIONSHIP_68 FOREIGN KEY (ID_INSUMO)
      REFERENCES INSUMO (ID_INSUMO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE COMPATIBILIDAD ADD CONSTRAINT FK_REFERENCE_51 FOREIGN KEY (ID_INSUMO)
      REFERENCES INSUMO (ID_INSUMO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE COMPATIBILIDAD ADD CONSTRAINT FK_RELATIONSHIP_40 FOREIGN KEY (ID_MARCA)
      REFERENCES MARCA (ID_MARCA) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE COTIZACION ADD CONSTRAINT FK_RELATIONSHIP_22 FOREIGN KEY (ID_PROVEEDOR)
      REFERENCES PROVEEDOR (ID_PROVEEDOR) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DETALLE_CAMBIO_INSUMO ADD CONSTRAINT FK_RELATIONSHIP_37 FOREIGN KEY (ID_DEVOLUCION)
      REFERENCES DEVOLUCION (ID_DEVOLUCION) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DETALLE_CAMBIO_INSUMO ADD CONSTRAINT FK_RELATIONSHIP_38 FOREIGN KEY (ID_INSUMO)
      REFERENCES INSUMO (ID_INSUMO) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DETALLE_COTIZACION ADD CONSTRAINT FK_RELATIONSHIP_20 FOREIGN KEY (ID_COTIZACION)
      REFERENCES COTIZACION (ID_COTIZACION) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DETALLE_COTIZACION ADD CONSTRAINT FK_RELATIONSHIP_66 FOREIGN KEY (ID_PROVEEDOR, ID_INSUMO, CODIGO_INSUMO)
      REFERENCES CODIGO_PROVEEDOR (ID_PROVEEDOR, ID_INSUMO, CODIGO_INSUMO) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DETALLE_DEVOLUCION ADD CONSTRAINT FK_RELATIONSHIP_35 FOREIGN KEY (ID_DEVOLUCION)
      REFERENCES DEVOLUCION (ID_DEVOLUCION) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DETALLE_DEVOLUCION ADD CONSTRAINT FK_RELATIONSHIP_36 FOREIGN KEY (ID_INSUMO)
      REFERENCES INSUMO (ID_INSUMO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DETALLE_GUIA_DE_DESPACHO ADD CONSTRAINT FK_RELATIONSHIP_49 FOREIGN KEY (ID_GUIA_DESPACHO)
      REFERENCES GUIA_DE_DESPACHO (ID_GUIA_DESPACHO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DETALLE_GUIA_DE_DESPACHO ADD CONSTRAINT FK_RELATIONSHIP_63 FOREIGN KEY (ID_PROVEEDOR, ID_INSUMO, CODIGO_INSUMO)
      REFERENCES CODIGO_PROVEEDOR (ID_PROVEEDOR, ID_INSUMO, CODIGO_INSUMO) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DETALLE_ORDEN_DE_COMPRA ADD CONSTRAINT FK_RELATIONSHIP_24 FOREIGN KEY (ID_COMPRA)
      REFERENCES ORDEN_DE_COMPRA (ID_COMPRA) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DETALLE_ORDEN_DE_COMPRA ADD CONSTRAINT FK_RELATIONSHIP_64 FOREIGN KEY (ID_PROVEEDOR, ID_INSUMO, CODIGO_INSUMO)
      REFERENCES CODIGO_PROVEEDOR (ID_PROVEEDOR, ID_INSUMO, CODIGO_INSUMO) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DETALLE_VENTA ADD CONSTRAINT FK_RELATIONSHIP_15 FOREIGN KEY (ID_VENTA)
      REFERENCES VENTA (ID_VENTA) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DETALLE_VENTA ADD CONSTRAINT FK_RELATIONSHIP_16 FOREIGN KEY (ID_INSUMO)
      REFERENCES INSUMO (ID_INSUMO) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DEVOLUCION ADD CONSTRAINT FK_RELATIONSHIP_34 FOREIGN KEY (ID_VENTA)
      REFERENCES VENTA (ID_VENTA) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DEVOLUCION ADD CONSTRAINT FK_RELATIONSHIP_56 FOREIGN KEY (ID_LOCAL)
      REFERENCES LOCAL (ID_LOCAL) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DEVOLUCION ADD CONSTRAINT FK_RELATIONSHIP_57 FOREIGN KEY (ID_VENDEDOR)
      REFERENCES VENDEDOR (ID_VENDEDOR) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE DEVOLUCION ADD CONSTRAINT FK_RELATIONSHIP_58 FOREIGN KEY (ID_ESTADO_DEVOLUCION)
      REFERENCES ESTADO_DEVOLUCION (ID_ESTADO_DEVOLUCION) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE GUIA_DE_DESPACHO ADD CONSTRAINT FK_RELATIONSHIP_25 FOREIGN KEY (ID_COMPRA)
      REFERENCES ORDEN_DE_COMPRA (ID_COMPRA) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GUIA_DE_DESPACHO ADD CONSTRAINT FK_RELATIONSHIP_26 FOREIGN KEY (ID_PROVEEDOR)
      REFERENCES PROVEEDOR (ID_PROVEEDOR) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE GUIA_LOCAL_BODEGUERO ADD CONSTRAINT FK_RELATIONSHIP_53 FOREIGN KEY (ID_GUIA_DESPACHO)
      REFERENCES GUIA_DE_DESPACHO (ID_GUIA_DESPACHO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GUIA_LOCAL_BODEGUERO ADD CONSTRAINT FK_RELATIONSHIP_54 FOREIGN KEY (ID_BODEGUERO)
      REFERENCES BODEGUERO (ID_BODEGUERO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GUIA_LOCAL_BODEGUERO ADD CONSTRAINT FK_RELATIONSHIP_55 FOREIGN KEY (ID_LOCAL)
      REFERENCES LOCAL (ID_LOCAL) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE INSUMO ADD CONSTRAINT FK_RELATIONSHIP_13 FOREIGN KEY (ID_TIPO_INSUMO)
      REFERENCES TIPO_INSUMO (ID_TIPO_INSUMO) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INSUMO_LOCAL ADD CONSTRAINT FK_RELATIONSHIP_50 FOREIGN KEY (ID_LOCAL)
      REFERENCES LOCAL (ID_LOCAL) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE INSUMO_LOCAL ADD CONSTRAINT FK_RELATIONSHIP_51 FOREIGN KEY (ID_INSUMO)
      REFERENCES INSUMO (ID_INSUMO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ORDEN_DE_COMPRA ADD CONSTRAINT FK_RELATIONSHIP_19 FOREIGN KEY (ID_PROVEEDOR)
      REFERENCES PROVEEDOR (ID_PROVEEDOR) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ORDEN_DE_COMPRA ADD CONSTRAINT FK_RELATIONSHIP_29 FOREIGN KEY (ID_ESTADO_COMPRA)
      REFERENCES ESTADO_ORDEN_DE_COMPRA (ID_ESTADO_COMPRA) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE ORDEN_DE_COMPRA ADD CONSTRAINT FK_RELATIONSHIP_72 FOREIGN KEY (ID_COTIZACION)
      REFERENCES COTIZACION (ID_COTIZACION) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE PROPIEDAD_VALOR ADD CONSTRAINT FK_RELATIONSHIP_14 FOREIGN KEY (ID_INSUMO)
      REFERENCES INSUMO (ID_INSUMO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PROPIEDAD_VALOR ADD CONSTRAINT FK_RELATIONSHIP_33 FOREIGN KEY (ID_PROPIEDAD)
      REFERENCES PROPIEDAD (ID_PROPIEDAD) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE TIPO_INSUMO_PROPIEDAD ADD CONSTRAINT FK_RELATIONSHIP_10 FOREIGN KEY (ID_TIPO_INSUMO)
      REFERENCES TIPO_INSUMO (ID_TIPO_INSUMO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE TIPO_INSUMO_PROPIEDAD ADD CONSTRAINT FK_RELATIONSHIP_11 FOREIGN KEY (ID_PROPIEDAD)
      REFERENCES PROPIEDAD (ID_PROPIEDAD) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE TRANSICION_ESTADOS_DEVOLUCION ADD CONSTRAINT FK_RELATIONSHIP_61 FOREIGN KEY (ID_ESTADO_DEVOLUCION_HASTA)
      REFERENCES ESTADO_DEVOLUCION (ID_ESTADO_DEVOLUCION) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE TRANSICION_ESTADOS_DEVOLUCION ADD CONSTRAINT FK_RELATIONSHIP_62 FOREIGN KEY (ID_ESTADO_DEVOLUCION_DESDE)
      REFERENCES ESTADO_DEVOLUCION (ID_ESTADO_DEVOLUCION) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE TRANSICION_ESTADO_COMPRA ADD CONSTRAINT FK_RELATIONSHIP_27 FOREIGN KEY (ID_ESTADO_COMPRA_HASTA)
      REFERENCES ESTADO_ORDEN_DE_COMPRA (ID_ESTADO_COMPRA) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE TRANSICION_ESTADO_COMPRA ADD CONSTRAINT FK_RELATIONSHIP_28 FOREIGN KEY (ID_ESTADO_COMPRA_DESDE)
      REFERENCES ESTADO_ORDEN_DE_COMPRA (ID_ESTADO_COMPRA) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE VENDEDOR ADD CONSTRAINT FK_RELATIONSHIP_1 FOREIGN KEY (ID_LOCAL)
      REFERENCES LOCAL (ID_LOCAL) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE VENDEDOR ADD CONSTRAINT FK_RELATIONSHIP_67 FOREIGN KEY (ID_VENDEDOR)
      REFERENCES USUARIO (ID_USUARIO) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE VENTA ADD CONSTRAINT FK_RELATIONSHIP_2 FOREIGN KEY (ID_VENDEDOR)
      REFERENCES VENDEDOR (ID_VENDEDOR) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE VENTA ADD CONSTRAINT FK_RELATIONSHIP_3 FOREIGN KEY (ID_LOCAL)
      REFERENCES LOCAL (ID_LOCAL) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE VENTA ADD CONSTRAINT FK_RELATIONSHIP_5 FOREIGN KEY (ID_CLIENTE)
      REFERENCES CLIENTE (ID_CLIENTE) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE VENTA ADD CONSTRAINT FK_RELATIONSHIP_71 FOREIGN KEY (ID_BODEGUERO_DESPACHO)
      REFERENCES BODEGUERO (ID_BODEGUERO) ON DELETE RESTRICT ON UPDATE CASCADE;

# VISTAS

 
CREATE VIEW V_RESUMEN_CLIENTE AS 
	SELECT c.ID_CLIENTE, c.NOMBRE_CLIENTE, c.RUT_CLIENTE, c.CORREO_CLIENTE, c.TELEFONO_CLIENTE,
           (YEAR(SYSDATE())-YEAR(c.FECHA_NACIMIENTO_CLIENTE)) AS EDAD, c.DESCUENTO_CLIENTE,
           COUNT(v.ID_VENTA) AS VENTAS, COUNT(d.ID_DEVOLUCION) AS DEVOLUCIONES 	   
 	FROM CLIENTE c, VENTA v, DEVOLUCION d
    WHERE c.ID_CLIENTE=v.ID_CLIENTE AND v.ID_VENTA=d.ID_VENTA
    GROUP BY c.ID_CLIENTE;

CREATE VIEW V_RESUMEN_VENDEDOR AS
	SELECT u.ID_USUARIO,u.NOMBRE_USUARIO, u.RUT_USUARIO,u.email as CORREO_USUARIO, u.TELEFONO_USUARIO,
			(YEAR(SYSDATE())-YEAR(u.FECHA_NACIMIENTO_USUARIO)) AS EDAD,
			COUNT(v.ID_VENTA) AS VENTAS, COUNT(d.ID_DEVOLUCION) AS DEVOLUCIONES 
	FROM USUARIO u, VENTA v, DEVOLUCION d
    WHERE u.ID_USUARIO=v.ID_VENDEDOR AND u.ID_USUARIO=d.ID_VENDEDOR AND u.ROL_USUARIO='V'
    GROUP BY u.ID_USUARIO;
    
CREATE VIEW V_RESUMEN_BODEGUERO AS
	SELECT u.ID_USUARIO, u.NOMBRE_USUARIO, u.RUT_USUARIO,u.email as CORREO_USUARIO, u.TELEFONO_USUARIO,
			(YEAR(SYSDATE())-YEAR(u.FECHA_NACIMIENTO_USUARIO)) AS EDAD,
            COUNT(v.ID_VENTA) AS VENTAS, COUNT(g.ID_GUIA_DESPACHO) AS COMPRAS
    FROM USUARIO u, VENTA v, GUIA_LOCAL_BODEGUERO g
    WHERE u.ROL_USUARIO='B' AND u.ID_USUARIO=v.ID_BODEGUERO_DESPACHO AND u.ID_USUARIO=g.ID_BODEGUERO
    GROUP BY u.ID_USUARIO;

drop view if exists V_STOCK_INSUMO;
CREATE VIEW V_STOCK_INSUMO AS
	SELECT  il.ID_INSUMO,l.ID_LOCAL,l.DIRECCION_LOCAL,il.STOCK_INSUMO_LOCAL, i.PRECIO_INSUMO, i.NOMBRE_UNICO_INSUMO, i.COMPATIBILIDAD_INSUMO, ti.NOMBRE_INSUMO
    FROM LOCAL l, INSUMO_LOCAL il, INSUMO i, TIPO_INSUMO ti
    WHERE l.ID_LOCAL=il.ID_LOCAL and il.ID_INSUMO=i.ID_INSUMO and ti.ID_TIPO_INSUMO=i.ID_TIPO_INSUMO
    ORDER BY il.ID_INSUMO;

CREATE VIEW V_RESUMEN_LOCAL AS
	SELECT l.*,COUNT(u.ID_VENDEDOR) AS CANTIDAD_VENDEDORES,COUNT(b.ID_BODEGUERO) AS CANTIDAD_BODEGUEROS,COUNT(v.ID_VENTA) AS VENTAS_ULTIMO_MES, COUNT(d.ID_DEVOLUCION) AS DEVOLUCIONES_ULTIMO_MES
    FROM LOCAL l, VENTA v, DEVOLUCION d, BODEGUERO b, VENDEDOR u
    WHERE l.ID_LOCAL=u.ID_LOCAL AND l.ID_LOCAL=b.ID_LOCAL AND l.ID_LOCAL=v.ID_LOCAL AND l.ID_LOCAL=d.ID_LOCAL
    GROUP BY l.ID_LOCAL;

drop view if exists V_VENTA;

CREATE VIEW V_VENTA AS
	SELECT v.ID_VENTA, v.NUMERO_BOLETA_VENTA, u.NOMBRE_USUARIO AS NOMBRE_VENDEDOR, c.NOMBRE_CLIENTE AS NOMBRE_CLIENTE,l.DIRECCION_LOCAL,l.ID_LOCAL,v.MONTO_TOTAL_VENTA, v.FORMA_DE_PAGO_VENTA,v.DESPACHADA_VENTA, v.FECHA_VENTA 
	FROM VENTA v, USUARIO u,CLIENTE c, LOCAL l
    WHERE u.ID_USUARIO=v.ID_VENDEDOR AND l.ID_LOCAL=v.ID_LOCAL AND c.ID_CLIENTE=v.ID_CLIENTE AND u.ROL_USUARIO='V';

drop view if exists V_DETALLE_VENTA;
CREATE VIEW V_DETALLE_VENTA AS
	SELECT d.ID_VENTA,d.LINEA_VENTA,i.NOMBRE_UNICO_INSUMO,d.CANTIDAD_VENTA,d.PRECIO_VENTA,d.DESCUENTO_VENTA
    FROM DETALLE_VENTA d, INSUMO i
    WHERE i.ID_INSUMO=d.ID_INSUMO;

CREATE VIEW V_DEVOLUCION AS
	SELECT d.*, u.NOMBRE_USUARIO AS NOMBRE_VENDEDOR, c.NOMBRE_CLIENTE, e.DESCRIPCION_ESTADO_DEVOLUCION AS ESTADO_ACTUAL, l.DIRECCION_LOCAL
    FROM LOCAL, DEVOLUCION d, CLIENTE c, USUARIO u,ESTADO_DEVOLUCION e, VENTA v, LOCAL l
    WHERE u.ID_USUARIO=d.ID_VENDEDOR AND d.ID_VENTA=v.ID_VENTA AND v.ID_CLIENTE=c.ID_CLIENTE AND d.ID_LOCAL=l.ID_LOCAL AND d.ID_ESTADO_DEVOLUCION=e.ID_ESTADO_DEVOLUCION
    GROUP BY d.ID_DEVOLUCION;

drop view if exists V_DETALLE_DEVOLUCION;
CREATE VIEW V_DETALLE_DEVOLUCION AS
	SELECT d.ID_DEVOLUCION,d.LINEA_DEVOLUCION,i.NOMBRE_UNICO_INSUMO,d.CANTIDAD_PRODUCTOS
    FROM DETALLE_DEVOLUCION d, INSUMO i
    WHERE i.ID_INSUMO=d.ID_INSUMO;

CREATE VIEW V_DETALLE_CAMBIO AS
	SELECT d.ID_DEVOLUCION,d.LINEA_CAMBIO,i.NOMBRE_UNICO_INSUMO,d.CANTIDAD_CAMBIO, PRECIO_CAMBIO, DESCUENTO_CAMBIO
    FROM detalle_cambio_insumo d, INSUMO i
    WHERE i.ID_INSUMO=d.ID_INSUMO;

CREATE VIEW V_PROVEEDOR AS
	SELECT p.* , COUNT(c.ID_COTIZACION) AS CANTIDAD_COTIZACIONES, COUNT(ID_COMPRA) AS CANTIDAD_ORDENES_DE_COMPRA
    FROM COTIZACION c, ORDEN_DE_COMPRA o, PROVEEDOR p
    WHERE p.ID_PROVEEDOR=c.ID_PROVEEDOR AND p.ID_PROVEEDOR=o.ID_PROVEEDOR;

CREATE VIEW V_ORDEN_DE_COMPRA AS
	SELECT o.*, p.NOMBRE_PROVEEDOR, c.FECHA_COTIZACION , e.DESCRIPCION_ESTADO_COMPRA AS ESTADO_ACTUAL
    FROM COTIZACION c, ORDEN_DE_COMPRA o, PROVEEDOR p, ESTADO_ORDEN_DE_COMPRA e
    WHERE o.ID_COTIZACION=c.ID_COTIZACION AND o.ID_PROVEEDOR=p.ID_PROVEEDOR AND o.ID_ESTADO_COMPRA=e.ID_ESTADO_COMPRA;

CREATE VIEW V_DETALLE_COMPRA AS
	SELECT d.*,i.NOMBRE_UNICO_INSUMO
    FROM DETALLE_ORDEN_DE_COMPRA d, INSUMO i
    WHERE d.ID_INSUMO=i.ID_INSUMO;

CREATE VIEW V_GUIA_DESPACHO AS
	SELECT g.*, u.NOMBRE_USUARIO AS NOMBRE_BODEGUERO_ENCARGADO, p.NOMBRE_PROVEEDOR, l.DIRECCION_LOCAL AS LOCAL_DESPACHO
    FROM USUARIO u, PROVEEDOR p, GUIA_DE_DESPACHO g, GUIA_LOCAL_BODEGUERO gl, LOCAL l
    WHERE g.ID_GUIA_DESPACHO=gl.ID_GUIA_DESPACHO AND g.ID_PROVEEDOR=p.ID_PROVEEDOR AND u.ID_USUARIO=gl.ID_BODEGUERO AND gl.ID_LOCAL=l.ID_LOCAL;

CREATE VIEW V_DETALLE_GUIA AS
	SELECT d.*, i.NOMBRE_UNICO_INSUMO
    FROM DETALLE_GUIA_DE_DESPACHO d,INSUMO i
    WHERE d.ID_INSUMO=i.ID_INSUMO;

drop view if exists V_PROPIEDAD_VALOR;
CREATE VIEW  V_PROPIEDAD_VALOR AS
	SELECT i.ID_INSUMO,p.ID_PROPIEDAD,p.NOMBRE_PROPIEDAD,v.VALOR
    FROM propiedad p, propiedad_valor v,insumo i
    WHERE p.ID_PROPIEDAD=v.ID_PROPIEDAD and v.ID_INSUMO=i.ID_INSUMO;

CREATE VIEW V_COMPATIBILIDAD as
	SELECT c.ID_INSUMO, c.ID_MARCA, m.NOMBRE_MARCA
    FROM compatibilidad c, MARCA m
    WHERE m.ID_MARCA=c.ID_MARCA;
# Este trigger se encarga de disminuir el stock de los insumos vendidos en insumo_local
# Se activa al momento de despachar la venta
# Se deben tomar los id_insumo del detalle y el id_local de la venta 

delimiter $
CREATE TRIGGER INSERT_USUARIO
AFTER INSERT ON USUARIO
FOR EACH ROW
BEGIN
	IF (STRCMP(new.ROL_USUARIO,'B')=0) THEN
		INSERT INTO `sivi`.`BODEGUERO`
		(ID_BODEGUERO)
        VALUES 
        (new.ID_USUARIO);
	ELSEIF (STRCMP(new.ROL_USUARIO,'V')=0) THEN
		INSERT INTO `sivi`.`VENDEDOR`
		(ID_VENDEDOR)
        VALUES 
        (new.ID_USUARIO);
    END IF;
END $


delimiter $
CREATE TRIGGER UPDATE_STOCK_VENTA
BEFORE UPDATE ON venta
FOR EACH ROW
BEGIN
	DECLARE id_insumo INT;
    DECLARE stock_venta INT DEFAULT 0;
    
    DECLARE actualizar_stock CURSOR FOR
    SELECT id_insumo,cantidad_venta  FROM detalle_venta WHERE id_venta=new.id_venta;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET @hecho = TRUE;
    
    IF (new.DESPACHADA_VENTA=TRUE AND old.DESPACHADA_VENTA=FALSE) THEN

		OPEN actualizar_stock;
		
		LOOP1: LOOP
		
			FETCH actualizar_stock INTO id_insumo, stock_venta;
			IF @hecho THEN
				LEAVE LOOP1;
			END IF;
			
				UPDATE insumo_local i
				SET STOCK_INSUMO_LOCAL=STOCK_INSUMO_LOCAL-stock_venta
				WHERE i.id_insumo=id_insumo AND i.id_local=new.id_local;
			
			
		END LOOP LOOP1;
		
		CLOSE actualizar_stock;
    
    END IF;
    
END $

#Maneja los estados de la compra de insumos
delimiter $
CREATE TRIGGER UPDATE_ESTADO_COMPRA
BEFORE INSERT ON GUIA_DE_DESPACHO
FOR EACH ROW
BEGIN
	UPDATE orden_de_compra o
	SET o.id_estado_compra=3
	WHERE o.id_compra=new.id_compra;
END $

# Este trigger se activa cuando se cambia el estado de una guia de despacho a almacenado
# Luego de cambiar el estado de una orden de compra a despachada se revisa la lista de la guia y se agrega el stock
# Además se revisa si se ha completado el despacho completo de la orden de compra asociado a esa guia de despacho

delimiter $
CREATE TRIGGER UPDATE_STOCK_COMPRA 
BEFORE UPDATE ON guia_de_despacho 
FOR EACH ROW
BEGIN
	DECLARE id_insumo INT;
    DECLARE stock_venta INT DEFAULT 0;
    
    DECLARE actualizar_stock CURSOR FOR
    SELECT id_insumo,cantidad_guia FROM detalle_guia_de_despacho WHERE new.id_guia_despacho=id_guia_despacho;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET @hecho = TRUE;
    
    # despacho_local_guia va a servir ahora como booleano para poder ver si ya fue despachada esa guia
    # (no para definir si el despacho es a un local o no, ya que se considera que toda guia de despacho es a un local)
    IF (new.DESPACHO_LOCAL_GUIA=TRUE AND old.DESPACHO_LOCAL_GUIA=FALSE) THEN 
    
		OPEN actualizar_stock;
		
		LOOP1: LOOP
		
			FETCH actualizar_stock INTO id_insumo, stock_venta;
			IF @hecho THEN
				LEAVE LOOP1;
			END IF;
			
			UPDATE insumo_local i
			SET STOCK_INSUMO_LOCAL=STOCK_INSUMO_LOCAL+stock_venta
			WHERE i.id_insumo=id_insumo AND i.id_local IN (SELECT id_local FROM guia_local_bodeguero WHERE id_guia_despacho=new.id_guia_despacho);
			
		END LOOP LOOP1;
		
		CLOSE actualizar_stock;
        
        #Cambia el estado de la orden de compra a 'ALMACENADO PARCIALMENTE'
		UPDATE orden_de_compra o
		SET o.id_estado_compra=4
		WHERE o.id_compra=new.id_compra;
        
	END IF;
    
    
	#revisa si se completo la orden de compra cambiar su estado

	IF ((SELECT COUNT(linea_guia) FROM detalle_guia_de_despacho WHERE new.id_guia_despacho=id_guia_despacho)=(SELECT COUNT(linea_compra) FROM detalle_orden_de_compra WHERE new.id_compra=id_compra)) THEN 
		UPDATE orden_de_compra o
		SET o.id_estado_compra=5#(SELECT CAST(valor_parametro AS SIGNED INTEGER) FROM parametro WHERE nombre_parametro='estado_fin_compra')
		WHERE o.id_compra=new.id_compra;
	ELSE
		UPDATE orden_de_compra o
		SET o.id_estado_compra=2
		WHERE o.id_compra=new.id_compra;
    END IF;
    
END $

delimiter $
CREATE TRIGGER UPDATE_STOCK_DEVOLUCION
BEFORE UPDATE ON DEVOLUCION
FOR EACH ROW
BEGIN
        DECLARE id_insumo INT;
		DECLARE cantidad_devolucion INT DEFAULT 0;
        DECLARE cantidad_cambio INT DEFAULT 0;
        
		DECLARE actualizar_stock_1 CURSOR FOR
		SELECT id_insumo,cantidad_devolucion FROM detalle_devolucion WHERE new.id_devolucion=id_devolucion;
        
        
		DECLARE actualizar_stock_2 CURSOR FOR
		SELECT id_insumo,cantidad_cambio FROM detalle_cambio_insumo WHERE new.id_devolucion=id_devolucion;
        
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET @hecho = TRUE;
        
	#Si pide reposicion de insumos, los insumos estan defectuosos y el estado cambio a despachado
	IF (STRCMP(new.TIPO_DEVOLUCION,'REPOSICION') = 0 AND
			 STRCMP((SELECT descripcion_estado_devolucion FROM estado_devolucion WHERE id_estado_devolucion=old.id_estado_devolucion),'SIN DESPACHAR')=0 
             AND STRCMP((SELECT descripcion_estado_devolucion FROM estado_devolucion WHERE id_estado_devolucion=new.id_estado_devolucion),'DESPACHADO')=0 ) THEN 
		
		OPEN actualizar_stock_1;
		
		LOOP1: LOOP
		
			FETCH actualizar_stock_1 INTO id_insumo, cantidad_devolucion;
			IF @hecho THEN
				LEAVE LOOP1;
			END IF;
			
			UPDATE insumo_local i
			SET STOCK_INSUMO_LOCAL=STOCK_INSUMO_LOCAL-cantidad_devolucion
			WHERE i.id_insumo=id_insumo AND i.id_local=new.id_local;
		
		END LOOP LOOP1;
		
		CLOSE actualizar_stock_1;
        
	#Si pide reposición por otros insumos y si los insumos estan defectuosos y el estado cambió a despachado
	ELSEIF (STRCMP(new.TIPO_DEVOLUCION,'OTROS INSUMOS') = 0 AND
			 STRCMP((SELECT descripcion_estado_devolucion FROM estado_devolucion WHERE id_estado_devolucion=old.id_estado_devolucion),'SIN DESPACHAR')=0 
             AND STRCMP((SELECT descripcion_estado_devolucion FROM estado_devolucion WHERE id_estado_devolucion=new.id_estado_devolucion),'DESPACHADO')=0) THEN
				
		OPEN actualizar_stock_2;
		
		LOOP2: LOOP
		
			FETCH actualizar_stock_2 INTO id_insumo, cantidad_cambio;
			IF @hecho THEN
				LEAVE LOOP2;
			END IF;
			
			UPDATE insumo_local i
			SET STOCK_INSUMO_LOCAL=STOCK_INSUMO_LOCAL-cantidad_cambio
			WHERE i.id_insumo=id_insumo AND i.id_local=new.id_local;
		
		END LOOP LOOP2;
		
		CLOSE actualizar_stock_2;
	
    #En caso de que haya terminado de ingresarse el detalle y los insumos no esten defectuosos
	ELSEIF(new.INSUMOS_DEFECTUOSOS_DEVOLUCION= FALSE AND STRCMP((SELECT descripcion_estado_devolucion FROM estado_devolucion WHERE id_estado_devolucion=old.id_estado_devolucion),'INGRESANDO')=0 
             AND STRCMP((SELECT descripcion_estado_devolucion FROM estado_devolucion WHERE id_estado_devolucion=new.id_estado_devolucion),'INGRESANDO')!=0) THEN
		
		OPEN actualizar_stock_1;
		
		LOOP1: LOOP
		
			FETCH actualizar_stock_1 INTO id_insumo, cantidad_devolucion;
			IF @hecho THEN
				LEAVE LOOP1;
			END IF;
			
			UPDATE insumo_local i
			SET STOCK_INSUMO_LOCAL=STOCK_INSUMO_LOCAL+cantidad_devolucion
			WHERE i.id_insumo=id_insumo AND i.id_local=new.id_local;
		
		END LOOP LOOP1;
		
		CLOSE actualizar_stock_1;
        
	END IF;
    
END $

# Descuentos automáticos son manejados por el framework

