CREATE TABLE `clientes` (
  `rfc` varchar(13) NOT NULL,
  `razonsocial` varchar(80) NOT NULL,
  `cpcliente` varchar(5) DEFAULT NULL,
  `correocliente` varchar(90) DEFAULT NULL,
  `telefonocliente` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `datoscliente` (
  `fecha` date DEFAULT NULL,
  `razonsocialcliente` varchar(80) NOT NULL,
  `rfccliente` varchar(13) NOT NULL,
  `monto` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `clientes`
  ADD PRIMARY KEY (`rfc`),
  ADD KEY `fk_rsclientes` (`razonsocial`);

ALTER TABLE `datoscliente`
  ADD PRIMARY KEY (`razonsocialcliente`),
  ADD KEY `fk_rfc` (`rfccliente`);

ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_rsclientes` FOREIGN KEY (`razonsocial`) REFERENCES `datoscliente` (`razonsocialcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `datoscliente`
  ADD CONSTRAINT `fk_rfc` FOREIGN KEY (`rfccliente`) REFERENCES `clientes` (`rfc`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;