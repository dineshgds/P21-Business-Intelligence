with inv_result AS
(
    SELECT 
    --# Location properties 
        il.[location_id] 
        ,il.[inv_mast_uid] 
        ,i.[item_id]
        ,i.[item_desc]
        ,il.[stockable] 
        ,il.[sellable] 
        ,il.[buy] 
        ,il.[make] 
        ,il.[requisition] 
        ,il.[discontinued]
        ,il.[track_bins] 
        ,il.[primary_bin]
        ,il.[qty_on_hand] 
        ,il.[qty_in_process] 
        ,il.[qty_allocated] 
        ,il.[qty_backordered] 
        ,il.[qty_in_transit]
        ,il.[product_group_id] 
    FROM {{ ref('stg_inv_loc')}} as il
    LEFT JOIN {{ref('stg_item_mast')}} as i on il.[inv_mast_uid] = i.[inv_mast_uid]
)

select * from inv_result