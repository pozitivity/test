create table district(
  id bigserial PRIMARY KEY,
  name text,
  short_name text
);

create table indicator(
  id bigserial PRIMARY  KEY,
  name text,
  parent_id bigint
);

create table score(
  id bigserial PRIMARY KEY,
  district_id bigint,
  indicator_id bigint,
  value_by_year jsonb
);
