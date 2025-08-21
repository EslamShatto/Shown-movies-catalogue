SELECT
    replace(COALESCE(show_id, 'Unknown'),'s','a')            AS a_id,
    COALESCE(type, 'Unknown')               AS type,
    COALESCE(title, 'Unknown')              AS title,
    COALESCE(director, 'Unknown')           AS director,
    COALESCE(amazon_raw.cast, 'Unknown')               AS casting,
    COALESCE(country, 'Unknown')            AS country,
    COALESCE(parse_alpha_date(date_added),TO_DATE('01-01-2007', 'MM-DD-YYYY'))       AS a_date_added,
    COALESCE(release_year, 'Unknown')       AS release_year,
    COALESCE(rating, 'Unknown')             AS a_rating,
    COALESCE(duration, 'Unknown')           AS duration,
    COALESCE(listed_in, 'Unknown')          AS listed_in,
    COALESCE(description, 'Unknown')        AS synopsis 
FROM SHOW_FINDER.PUBLIC.amazon_raw