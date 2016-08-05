CREATE TABLE egov_boot_cab
(
  id bigint NOT NULL,
  cabtype character varying(50) NOT NULL,
  contactperson character varying(100),
  email character varying(100),
  CONSTRAINT pk_egov_boot_cab PRIMARY KEY (id)
)

CREATE TABLE egov_boot_customer
(
  id bigint NOT NULL,
  name character varying(50) NOT NULL,
  email character varying(100),
  address character varying(100),
  CONSTRAINT pk_egov_boot_customer PRIMARY KEY (id)
);

ALTER TABLE egov_boot_cab ADD COLUMN longitude double precision;
ALTER TABLE egov_boot_cab ADD COLUMN latitude double precision;





insert into EG_MODULE (ID,NAME,ENABLED,CONTEXTROOT,PARENTMODULE,DISPLAYNAME,ORDERNUMBER) VALUES (NEXTVAL('SEQ_EG_MODULE'),'Bootcamp','true',null,(select id from eg_module where name = 'Works Management'),'Bootcamp', 1);
-----------------Role action mappings to create customer ----------------
insert into eg_action (ID,NAME,URL,QUERYPARAMS,PARENTMODULE,ORDERNUMBER,DISPLAYNAME,ENABLED,CONTEXTROOT,VERSION,CREATEDBY,CREATEDDATE,LASTMODIFIEDBY,LASTMODIFIEDDATE,APPLICATION) values(nextval('SEQ_EG_ACTION'),'Bootcamp Newform','/bootcamp/newform',null,(select id from eg_module where name='Bootcamp'),1,'Bootcamp Newform','true','egworks',0,1,now(),1,now(),(select id from eg_module  where name = 'Works Management'));
insert into eg_roleaction values((select id from eg_role where name='Super User'),(select id from eg_action where name='Bootcamp Newform'));

insert into eg_action (ID,NAME,URL,QUERYPARAMS,PARENTMODULE,ORDERNUMBER,DISPLAYNAME,ENABLED,CONTEXTROOT,VERSION,CREATEDBY,CREATEDDATE,LASTMODIFIEDBY,LASTMODIFIEDDATE,APPLICATION) values(nextval('SEQ_EG_ACTION'),'Customer Success','/bootcamp/create',null,(select id from eg_module where name='Bootcamp'),1,'Customer Success','false','egworks',0,1,now(),1,now(),(select id from eg_module  where name = 'Works Management'));
insert into eg_roleaction values((select id from eg_role where name='Super User'),(select id from eg_action where name='Customer Success'));


------------Role action mappings to create cab
insert into eg_action (ID,NAME,URL,QUERYPARAMS,PARENTMODULE,ORDERNUMBER,DISPLAYNAME,ENABLED,CONTEXTROOT,VERSION,CREATEDBY,CREATEDDATE,LASTMODIFIEDBY,LASTMODIFIEDDATE,APPLICATION) values(nextval('SEQ_EG_ACTION'),'Cab Newform','/bootcamp/cabnewform',null,(select id from eg_module where name='Bootcamp'),1,'Cab Newform','true','egworks',0,1,now(),1,now(),(select id from eg_module  where name = 'Works Management'));
insert into eg_roleaction values((select id from eg_role where name='Super User'),(select id from eg_action where name='Cab Newform'));

insert into eg_action (ID,NAME,URL,QUERYPARAMS,PARENTMODULE,ORDERNUMBER,DISPLAYNAME,ENABLED,CONTEXTROOT,VERSION,CREATEDBY,CREATEDDATE,LASTMODIFIEDBY,LASTMODIFIEDDATE,APPLICATION) values(nextval('SEQ_EG_ACTION'),'Create Cab','/bootcamp/create-cab',null,(select id from eg_module where name='Bootcamp'),1,'Create Cab','false','egworks',0,1,now(),1,now(),(select id from eg_module  where name = 'Works Management'));
insert into eg_roleaction values((select id from eg_role where name='Super User'),(select id from eg_action where name='Create Cab'));
