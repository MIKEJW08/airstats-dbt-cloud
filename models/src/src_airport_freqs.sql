WITH airport_freqs AS (
    SELECT
        *
    FROM
       {{ source('dbt_airstats', 'airport_freqs') }}
)
SELECT
    id as airport_freq_id,
    airport_ident,
    type as airport_freq_type,
    description as airport_freq_description
FROM
    airport_freqs