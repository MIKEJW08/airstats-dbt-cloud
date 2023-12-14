{{
    config(
        materialized = 'view',
        alias = 'airport_by_freqs',
    )
}}

SELECT 
    a.AIRPORT_IDENT,
	AIRPORT_TYPE,
    ISO_REGION,
    NUM_OF_FREQS
FROM {{ ref("dim_airports_filtered") }} a
LEFT JOIN {{ ref("dim_airports_freqs_aggregated") }} af ON a.AIRPORT_IDENT = af.AIRPORT_IDENT
WHERE NUM_OF_FREQS IS NOT NULL
ORDER BY
    NUM_OF_FREQS DESC