WITH countries AS (
    SELECT * FROM {{ source('dbt_airstats', 'countries') }}
)

SELECT
    code as iso_country,
    name as country_name,
    continent
FROM
    countries