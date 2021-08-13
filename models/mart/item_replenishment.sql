WITH inv_result AS
(
	SELECT
	--# Replenishment properties 
			il.[location_id]
	       ,il.[inv_mast_uid]
	       ,i.[item_id]
	       ,i.[item_desc] AS [Item Description]
	       ,il.[replenishment_method]
	       ,il.[inv_min] as [Min_OP]
	       ,il.[inv_max] as [Max_OQ]
	       ,il.[safety_stock]
	       ,il.[min_replenishment_qty]
	       ,il.[replenishment_location]
	       ,il.[average_monthly_usage]
	       ,il.[safety_stock_type]
	       ,il.[service_level_measure]
	       ,il.[service_level_pct_goal]
	       ,pg.[product_group_desc] AS [Product Group Description]
	       ,pg.[asset_account_no]   AS [Asset Account No]
	FROM {{ ref('stg_inv_loc')}} AS il
	LEFT JOIN {{ref('stg_item_mast')}} AS i
	ON il.[inv_mast_uid] = i.[inv_mast_uid]
	LEFT JOIN {{ref('stg_product_group')}} AS pg
	ON il.[product_group_id] = pg.[product_group_id]
)
SELECT  *
FROM inv_result