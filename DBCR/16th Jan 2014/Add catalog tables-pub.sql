drop table SGS_TESTI;
drop table SGS_TESTI_LIST;
drop table SGS_TESTI_CONTAINER;
drop table SGS_PRD_TESTI;
drop table SGS_TESTI_SITES;

CREATE TABLE SGS_TESTIMONIAL (
	testimonial_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	testimonial_creator_name varchar2(254)	NULL,
	testimonial_description CLOB	NULL,
	testimonial_image 	varchar2(254)	NULL,
	testimonial_title 	varchar2(254)	NULL,
	testimonial_creator_country varchar2(254)	NULL,
	testimonial_date 	DATE	NULL,
	last_mod_date 		DATE	NULL,
	version_deleted 	number(1)	NULL,
	version_editable 	number(1)	NULL,
	pred_version 		INTEGER	NULL,
	workspace_id 		varchar2(254)	NULL,
	branch_id 		varchar2(254)	NULL,
	is_head 		number(1)	NULL,
	checkin_date 		DATE	NULL,
	CHECK (version_deleted IN (0, 1)),
	CHECK (version_editable IN (0, 1)),
	CHECK (is_head IN (0, 1)),
	PRIMARY KEY(testimonial_id, asset_version)
);

CREATE TABLE SGS_TESTIMONIAL_SITES (
	testimonial_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	site_id 		varchar2(254)	NOT NULL,
	PRIMARY KEY(testimonial_id, asset_version, site_id)
);

CREATE TABLE SGS_TESTIMONIAL_CONTAINER (
	testimonial_ids 	varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	last_mod_date 		DATE	NULL,
	version_deleted 	number(1)	NULL,
	version_editable 	number(1)	NULL,
	pred_version 		INTEGER	NULL,
	workspace_id 		varchar2(254)	NULL,
	branch_id 		varchar2(254)	NULL,
	is_head 		number(1)	NULL,
	checkin_date 		DATE	NULL,
	CHECK (version_deleted IN (0, 1)),
	CHECK (version_editable IN (0, 1)),
	CHECK (is_head IN (0, 1)),
	PRIMARY KEY(testimonial_ids, asset_version)
);

CREATE TABLE SGS_TESTIMONIAL_LIST (
	testimonial_ids 	varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	sequence_num 		INTEGER	NOT NULL,
	testimonial_id 		varchar2(254)	NULL,
	PRIMARY KEY(testimonial_ids, asset_version, sequence_num)
);

CREATE TABLE SGS_PRD_TESTIMONIAL (
	product_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	site_id 		varchar2(254)	NOT NULL,
	testimonial_id 		varchar2(254)	NULL,
	PRIMARY KEY(product_id, asset_version, site_id)
);