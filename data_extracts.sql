-- Data extracts from LIVE DB
--as all tables follow the same naming convention just replace year number in the script
--YYYY to the year needed
--depending on where data is loaded update schema_name (Find - Replace)
--similar update geography_name in query

create table schema_name_extracts.geography_name_extract_YYYY_ride_edge_alignment_hourly   AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_edge_alignment_hourly a
WHERE a.edge_id::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_edges_YYYY))

create table schema_name_extracts.geography_name_extract_YYYY_ride_edge_rollup_month_total   AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_edge_rollup_month_total a
WHERE a.edge_id::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_edges_YYYY))

create table schema_name_extracts.geography_name_extract_YYYY_ride_edge_rollup_year_total   AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_edge_rollup_year_total a
WHERE a.edge_id::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_edges_YYYY))

create table schema_name_extracts.geography_name_extract_YYYY_ride_node_alignment_hourly  AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_node_alignment_hourly a
WHERE a.node_id::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_nodes_YYYY))

create table schema_name_extracts.geography_name_extract_YYYY_ride_node_rollup_month_total  AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_node_rollup_month_total a
WHERE a.node_id::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_nodes_YYYY))

create table schema_name_extracts.geography_name_extract_YYYY_ride_nodes_rollup_year_total  AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_nodes_rollup_year_total a
WHERE a.node_id::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_nodes_YYYY))


create table schema_name_extracts.geography_name_extract_YYYY_ride_od_rollup_month_total   AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_od_rollup_month_total a
WHERE (a.origin::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_od_YYYY_polygons))  or (a.destination::integer in (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_od_YYYY_polygons)));

create table schema_name_extracts.geography_name_extract_YYYY_ride_od_hourly   AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_od_hourly a
WHERE (a.polygon_id::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_od_YYYY_polygons))
 or ( a.dest_polygon_id::integer in (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_od_YYYY_polygons)))


create table schema_name_extracts.geography_name_extract_YYYY_ride_od_rollup_total  AS
(SELECT *
FROM schema_name.geography_name_main_table_YYYY_ride_od_rollup_total a
WHERE (a.origin::integer IN (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_od_YYYY_polygons))
 or ( a.destination::integer in (SELECT ID FROM schema_name_extracts.geography_name_extract_1k_od_YYYY_polygons)))


