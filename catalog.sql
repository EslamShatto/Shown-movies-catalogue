WITH netflix AS (
    SELECT
        n_id AS show_id,
        type,
        title,
        director,
        casting,
        country,
        n_date_added AS date_added, 
        release_year,
        n_rating AS rating,
        duration,
        listed_in,
        synopsis      -- no comma here
        , 'netflix' AS platform
    FROM {{ ref('netflix') }} 
),

disney AS (
    SELECT
        d_id AS show_id,
        type,
        title,
        director,
        casting,
        country,
        d_date_added AS date_added,
        release_year,
        d_rating AS rating,
        duration,
        listed_in,
        synopsis      -- no comma here
        , 'Disney' AS platform
    FROM {{ ref('disney') }} 
),

amazon AS (
    SELECT
        a_id AS show_id,
        type,
        title,
        director,
        casting,
        country,
        a_date_added AS date_added,
        release_year,
        a_rating AS rating,
        duration,
        listed_in,
        synopsis      -- no comma here
        , 'amazon' AS platform
    FROM {{ ref('amazon') }}
)

SELECT * FROM netflix
UNION ALL
SELECT * FROM disney
UNION ALL
SELECT * FROM amazon