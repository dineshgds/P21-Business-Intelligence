WITH result AS (
SELECT  terms_id 
       ,terms_desc 
       ,net_days 
       ,discount_pct 
       ,discount_days 
       ,delete_flag 
       ,date_created 
       ,date_last_modified 
       ,last_maintained_by
FROM terms WITH (NOLOCK)
WHERE delete_flag <> 'N' ) 

SELECT  * FROM result