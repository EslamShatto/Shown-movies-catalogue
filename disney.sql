SELECT
    replace(COALESCE(show_id, 'Unknown'),'s','d')            AS d_id,
    COALESCE(type, 'Unknown')               AS type,
    COALESCE(title, 'Unknown')              AS title,
    COALESCE(director, 'Unknown')           AS director,
    COALESCE(disney_raw.cast, 'Unknown')               AS casting,
    COALESCE(country, 'Unknown')            AS country,
    parse_alpha_date(COALESCE(date_added, 'Unknown'))          AS d_date_added,
    COALESCE(release_year, 'Unknown')       AS release_year,
    COALESCE(rating, 'Unknown')             AS d_rating,
    COALESCE(duration, 'Unknown')           AS duration,
    COALESCE(listed_in, 'Unknown')          AS listed_in,
    COALESCE(description, 'Unknown')        AS synopsis 
FROM SHOW_FINDER.PUBLIC.disney_raw