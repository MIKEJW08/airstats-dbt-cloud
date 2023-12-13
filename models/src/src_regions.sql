WITH regions AS (
    SELECT * FROM {{ ref('dbt_airstats', 'regions') }}
)

SELECT
    code AS region,
    local_code,
    name as region_name,
    continent,
    iso_country
FROM
    regions;