# strava
strava set up

## Data extracts

1. Load GIS data for a requested geometry + 1k buffer to allow customer perform 'seamless' analysis. 
2. Create tables which would hold extract for requested geometry by running queries from data_extracts.sql

    `for some YYYY  e.g in OD table origin and destination data was loaded as text to query it use type casting e.g od::integer`

3. Once tables are created use ogr2ogr ( or any convinient alternative to extract data to be sent to customer)

**N.B!** to run the following scripts the [GDAL library](https://gdal.org/download.html) should be installed  

4. QA

## Data Loading

1. Run queries from data_loading.sql
2. For tables

        geography_name_YYYY_ride_rollup_month_total
    
        geography_name_YYYY_ride_node_rollup_month_total
    
         geography_name_YYYY_ride_od_rollup_month_total
    
    populate **month_n** column to add month number value
    
            geography_name_YYYY_ride_edge_rollup_year_total
            
            geography_name_YYYY_ride_od_rollup_total
            
    populate **month_range** column  to add month range value


##Maintenance

1. Run maintenance.sql
