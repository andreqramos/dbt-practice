SELECT *
FROM {{ ref('fct_reviews') }} AS f
LEFT JOIN {{ ref('dim_listings_cleansed') }} AS d
USING (listing_id)
WHERE f.review_date <= d.created_at
LIMIT 1
