-- Constraints

ALTER TABLE habitacion
	ADD CONSTRAINT FK_habitacion_tipohabitacion
	FOREIGN KEY (tipohabitacion_id) REFERENCES tipohabitacion (id);

ALTER TABLE cliente
	ADD CONSTRAINT FK_cliente_pais
   	FOREIGN KEY (pais_id) REFERENCES pais (id);

ALTER TABLE alquiler
	ADD CONSTRAINT FK_alquiler_cliente
	FOREIGN KEY (cliente_id) REFERENCES cliente (id);
    
ALTER TABLE alquiler
	ADD CONSTRAINT FK_alquiler_habitacion
	FOREIGN KEY (habitacion_id) REFERENCES habitacion (id);
    
ALTER TABLE alquiler
	ADD CONSTRAINT FK_alquiler_mediopago
	FOREIGN KEY (mediopago_id) REFERENCES mediopago (id);