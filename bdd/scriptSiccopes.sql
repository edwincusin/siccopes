-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.7.2
-- PostgreSQL version: 9.4
-- Project Site: pgmodeler.com.br
-- Model Author: ---

SET check_function_bodies = false;
-- ddl-end --


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: siccopes | type: DATABASE --
-- -- DROP DATABASE siccopes;
-- CREATE DATABASE siccopes
-- ;
-- -- ddl-end --
-- 

-- object: public."personalOperativo" | type: TABLE --
-- DROP TABLE public."personalOperativo";
CREATE TABLE public."personalOperativo"(
	"cedula_pO" varchar(25),
	"apellidoPaterno_pO" varchar(25),
	"apellidoMaterno_pO" varchar(25),
	"primerNombre_pO" varchar(25),
	"segundoNombre_pO" varchar(25),
	"fechaNacimiento_pO" date,
	"profesion_pO" varchar(25),
	"disponeVehiculo_pO" varchar(3),
	"celular_pO" varchar(10),
	"telefono_pO" varchar(10),
	"fechaIngreso_pO" date,
	"fechaSalida_pO" date,
	"email_pO" varchar(50),
	"direccionDomicilio_pO" varchar(50),
	"descripcionExtra_pO" varchar(50),
	"sexo_pO" integer,
	"estadoCivil_pO" integer,
	"nacionalidad_pO" integer,
	"instruccion_pO" integer,
	"tipoSangre_pO" integer,
	"tipoLicenciaConducir_pO" integer,
	"estadoLaboral_pO" integer,
	"cargo_pO" integer,
	"referenciaFamiliar_pO" integer,
	"usuarioSiccopes_pO" varchar(20),
	CONSTRAINT "pk_cedula_personalOperativo" PRIMARY KEY ("cedula_pO")

);
-- ddl-end --
COMMENT ON TABLE public."personalOperativo" IS 'Esta tabal va a contener informacion del personal de colaboradores de la empresa';
COMMENT ON COLUMN public."personalOperativo"."disponeVehiculo_pO" IS 'ingresar SI o NO';
COMMENT ON COLUMN public."personalOperativo"."telefono_pO" IS 'celular o telefono';
COMMENT ON COLUMN public."personalOperativo"."descripcionExtra_pO" IS 'campo adicional para decripcion de fecha de salida no es necesario ocupar';
-- ddl-end --

-- object: public.sexo | type: TABLE --
-- DROP TABLE public.sexo;
CREATE TABLE public.sexo(
	codigo_sexo serial,
	descripcion_sexo varchar(25),
	CONSTRAINT pk_sexo PRIMARY KEY (codigo_sexo)

);
-- ddl-end --
-- object: public."estadoCivil" | type: TABLE --
-- DROP TABLE public."estadoCivil";
CREATE TABLE public."estadoCivil"(
	"codigo_eC" serial,
	"descripcion_eC" varchar(30),
	CONSTRAINT "pk_estadoCivil" PRIMARY KEY ("codigo_eC")

);
-- ddl-end --
-- object: public.nacionalidad | type: TABLE --
-- DROP TABLE public.nacionalidad;
CREATE TABLE public.nacionalidad(
	codigo_nacionalidad serial,
	descripcion_nacionalidad varchar(30),
	CONSTRAINT pk_nacionalidad PRIMARY KEY (codigo_nacionalidad)

);
-- ddl-end --
-- object: public.intruccion | type: TABLE --
-- DROP TABLE public.intruccion;
CREATE TABLE public.intruccion(
	codigo_instruccion serial,
	descripcion_instruccion varchar(30),
	CONSTRAINT pk_instruccion PRIMARY KEY (codigo_instruccion)

);
-- ddl-end --
-- object: public."tipoSangre" | type: TABLE --
-- DROP TABLE public."tipoSangre";
CREATE TABLE public."tipoSangre"(
	"codigo_tS" serial,
	"descripcion_tS" varchar(10),
	CONSTRAINT "pk_tipoSangre" PRIMARY KEY ("codigo_tS")

);
-- ddl-end --
-- object: public."tipoLicenciaConducir" | type: TABLE --
-- DROP TABLE public."tipoLicenciaConducir";
CREATE TABLE public."tipoLicenciaConducir"(
	"codigo_tLC" serial,
	"descripcion_tLC" varchar(10),
	CONSTRAINT "pk_tipoLicenciaConducir" PRIMARY KEY ("codigo_tLC")

);
-- ddl-end --
-- object: public."estadoLaboral" | type: TABLE --
-- DROP TABLE public."estadoLaboral";
CREATE TABLE public."estadoLaboral"(
	"codigo_eL" serial,
	"descripcion_eL" varchar(20),
	CONSTRAINT "pk_estadoLaboral" PRIMARY KEY ("codigo_eL")

);
-- ddl-end --
COMMENT ON TABLE public."estadoLaboral" IS 'si es activo o pasivo ';
-- ddl-end --

-- object: public.cargo | type: TABLE --
-- DROP TABLE public.cargo;
CREATE TABLE public.cargo(
	codigo_cargo serial,
	descripcion_cargo varchar(25),
	CONSTRAINT pk_cargo PRIMARY KEY (codigo_cargo)

);
-- ddl-end --
-- object: public."usuarioSiccopes" | type: TABLE --
-- DROP TABLE public."usuarioSiccopes";
CREATE TABLE public."usuarioSiccopes"(
	cedula_usr varchar(10),
	"contraseña_usr" varchar(35),
	"primerApellido_usr" varchar(25),
	"primerNombre_usr" varchar(25),
	email_usr varchar(50),
	"fechaRegistro_usr" date,
	cargo_usr integer,
	"tipoUsuario_usr" integer,
	sexo_usr integer,
	"estadoLaboral_usr" integer,
	CONSTRAINT "pk_usuarioSiccopes" PRIMARY KEY (cedula_usr)

);
-- ddl-end --
COMMENT ON TABLE public."usuarioSiccopes" IS 'usuarios que van hacer uso del sistema';
-- ddl-end --

-- object: public."tipoUsuario" | type: TABLE --
-- DROP TABLE public."tipoUsuario";
CREATE TABLE public."tipoUsuario"(
	"codigo_tU" serial,
	"descripcion_tU" varchar(25),
	CONSTRAINT "pk_tipoUsuario" PRIMARY KEY ("codigo_tU")

);
-- ddl-end --
-- object: public."referenciaFamiliar" | type: TABLE --
-- DROP TABLE public."referenciaFamiliar";
CREATE TABLE public."referenciaFamiliar"(
	"codigo_rF" serial,
	"primerNombre_rF" varchar(25),
	"primerApellido_rF" varchar(25),
	"celular_rF" varchar(10),
	"telefono_rF" varchar(10),
	"parentesco_rF" integer,
	CONSTRAINT "pk_referenciaFamiliar" PRIMARY KEY ("codigo_rF")

);
-- ddl-end --
-- object: public."tipoParentesco" | type: TABLE --
-- DROP TABLE public."tipoParentesco";
CREATE TABLE public."tipoParentesco"(
	"codigo_tP" serial,
	"descripcion_tP" varchar(25),
	CONSTRAINT "pk_tipoParentesco" PRIMARY KEY ("codigo_tP")

);
-- ddl-end --
-- object: fk_sexo | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT fk_sexo;
ALTER TABLE public."personalOperativo" ADD CONSTRAINT fk_sexo FOREIGN KEY ("sexo_pO")
REFERENCES public.sexo (codigo_sexo) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_estadoCivil" | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT "fk_estadoCivil";
ALTER TABLE public."personalOperativo" ADD CONSTRAINT "fk_estadoCivil" FOREIGN KEY ("estadoCivil_pO")
REFERENCES public."estadoCivil" ("codigo_eC") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: fk_nacionalidad | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT fk_nacionalidad;
ALTER TABLE public."personalOperativo" ADD CONSTRAINT fk_nacionalidad FOREIGN KEY ("nacionalidad_pO")
REFERENCES public.nacionalidad (codigo_nacionalidad) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: fk_instruccion | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT fk_instruccion;
ALTER TABLE public."personalOperativo" ADD CONSTRAINT fk_instruccion FOREIGN KEY ("instruccion_pO")
REFERENCES public.intruccion (codigo_instruccion) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_tipoSangre" | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT "fk_tipoSangre";
ALTER TABLE public."personalOperativo" ADD CONSTRAINT "fk_tipoSangre" FOREIGN KEY ("tipoSangre_pO")
REFERENCES public."tipoSangre" ("codigo_tS") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_tipoLicenciaConducir" | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT "fk_tipoLicenciaConducir";
ALTER TABLE public."personalOperativo" ADD CONSTRAINT "fk_tipoLicenciaConducir" FOREIGN KEY ("tipoLicenciaConducir_pO")
REFERENCES public."tipoLicenciaConducir" ("codigo_tLC") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_estadoLaboral" | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT "fk_estadoLaboral";
ALTER TABLE public."personalOperativo" ADD CONSTRAINT "fk_estadoLaboral" FOREIGN KEY ("estadoLaboral_pO")
REFERENCES public."estadoLaboral" ("codigo_eL") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_cargo_personalOperativo" | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT "fk_cargo_personalOperativo";
ALTER TABLE public."personalOperativo" ADD CONSTRAINT "fk_cargo_personalOperativo" FOREIGN KEY ("cargo_pO")
REFERENCES public.cargo (codigo_cargo) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_refenciaFamiliar" | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT "fk_refenciaFamiliar";
ALTER TABLE public."personalOperativo" ADD CONSTRAINT "fk_refenciaFamiliar" FOREIGN KEY ("referenciaFamiliar_pO")
REFERENCES public."referenciaFamiliar" ("codigo_rF") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_usuarioSiccopes" | type: CONSTRAINT --
-- ALTER TABLE public."personalOperativo" DROP CONSTRAINT "fk_usuarioSiccopes";
ALTER TABLE public."personalOperativo" ADD CONSTRAINT "fk_usuarioSiccopes" FOREIGN KEY ("usuarioSiccopes_pO")
REFERENCES public."usuarioSiccopes" (cedula_usr) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_cargoUsuario_usuario" | type: CONSTRAINT --
-- ALTER TABLE public."usuarioSiccopes" DROP CONSTRAINT "fk_cargoUsuario_usuario";
ALTER TABLE public."usuarioSiccopes" ADD CONSTRAINT "fk_cargoUsuario_usuario" FOREIGN KEY (cargo_usr)
REFERENCES public.cargo (codigo_cargo) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_tipoUsuario" | type: CONSTRAINT --
-- ALTER TABLE public."usuarioSiccopes" DROP CONSTRAINT "fk_tipoUsuario";
ALTER TABLE public."usuarioSiccopes" ADD CONSTRAINT "fk_tipoUsuario" FOREIGN KEY ("tipoUsuario_usr")
REFERENCES public."tipoUsuario" ("codigo_tU") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_sexo_usuarioSiccopes" | type: CONSTRAINT --
-- ALTER TABLE public."usuarioSiccopes" DROP CONSTRAINT "fk_sexo_usuarioSiccopes";
ALTER TABLE public."usuarioSiccopes" ADD CONSTRAINT "fk_sexo_usuarioSiccopes" FOREIGN KEY (sexo_usr)
REFERENCES public.sexo (codigo_sexo) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_estadoLaboral_usuarioSiccopes" | type: CONSTRAINT --
-- ALTER TABLE public."usuarioSiccopes" DROP CONSTRAINT "fk_estadoLaboral_usuarioSiccopes";
ALTER TABLE public."usuarioSiccopes" ADD CONSTRAINT "fk_estadoLaboral_usuarioSiccopes" FOREIGN KEY ("estadoLaboral_usr")
REFERENCES public."estadoLaboral" ("codigo_eL") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "fk_tipoParentesco" | type: CONSTRAINT --
-- ALTER TABLE public."referenciaFamiliar" DROP CONSTRAINT "fk_tipoParentesco";
ALTER TABLE public."referenciaFamiliar" ADD CONSTRAINT "fk_tipoParentesco" FOREIGN KEY ("parentesco_rF")
REFERENCES public."tipoParentesco" ("codigo_tP") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --



