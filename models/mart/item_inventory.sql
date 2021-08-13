with inv_result AS
(
    SELECT 
    --# Stock/Inventory properties 
        il.[location_id] 
        ,il.[inv_mast_uid] 
        ,i.[item_id]
        ,i.[item_desc] as [Item Description]
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
        ,pg.[product_group_desc] as [Product Group Description]
        ,pg.[asset_account_no] as [Asset Account No]
    FROM {{ ref('stg_inv_loc')}} as il
    LEFT JOIN {{ref('stg_item_mast')}} as i on il.[inv_mast_uid] = i.[inv_mast_uid]
    LEFT JOIN {{ref('stg_product_group')}} as pg on il.[product_group_id] = pg.[product_group_id]
    WHERE i.[other_charge_item] <> 'Y'
)

select * from inv_result