drop table SGS_TESTI;
drop table SGS_TESTI_LIST;
drop table SGS_TESTI_CONTAINER;
drop table SGS_PRD_TESTI;
drop table SGS_TESTI_SITES;

CREATE TABLE SGS_TESTIMONIAL ( testimonial_id varchar2(254) NOT NULL, testimonial_creator_name varchar2(254) NULL, testimonial_description CLOB NULL, testimonial_image varchar2(254) NULL, testimonial_title varchar2(254) NULL, testimonial_creator_country varchar2(254) NULL, testimonial_date DATE NULL, last_mod_date DATE NULL, PRIMARY KEY(testimonial_id) );

CREATE TABLE SGS_TESTIMONIAL_SITES ( testimonial_id varchar2(254) NOT NULL REFERENCES SGS_TESTIMONIAL(testimonial_id), site_id varchar2(254) NOT NULL REFERENCES site_configuration(id), PRIMARY KEY(testimonial_id, site_id) );

CREATE TABLE SGS_TESTIMONIAL_CONTAINER ( testimonial_ids varchar2(254) NOT NULL, last_mod_date DATE NULL, PRIMARY KEY(testimonial_ids) );

CREATE TABLE SGS_TESTIMONIAL_LIST ( testimonial_ids varchar2(254) NOT NULL REFERENCES SGS_TESTIMONIAL_CONTAINER(testimonial_ids), sequence_num INTEGER NOT NULL, testimonial_id varchar2(254) NULL REFERENCES SGS_TESTIMONIAL(testimonial_id), PRIMARY KEY(testimonial_ids, sequence_num) );

CREATE TABLE SGS_PRD_TESTIMONIAL ( product_id varchar2(254) NOT NULL REFERENCES dcs_product(product_id), site_id varchar2(254) NOT NULL, testimonial_id varchar2(254) NULL REFERENCES SGS_TESTIMONIAL_CONTAINER(testimonial_ids), PRIMARY KEY(product_id, site_id) );