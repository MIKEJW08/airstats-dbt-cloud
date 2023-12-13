WITH src_airport_freqs AS (
    SELECT
        *
    FROM
        {{ ref('src_airport_freqs') }}
)
SELECT
    airport_ident, 
    COUNT(airport_freq_id) as num_of_freqs
FROM
    src_airport_freqs
GROUP BY
    airport_ident