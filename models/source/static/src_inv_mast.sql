with result AS (
SELECT  [inv_mast_uid] 
       ,[item_id] 
       ,[item_desc] 
       ,[delete_flag] 
       ,[weight] 
       ,[net_weight] 
       ,[date_created] 
       ,[date_last_modified] 
       ,[last_maintained_by] 
       ,[inactive] 
       ,[cube] 
       ,[date_inactive] 
       ,[date_reactive] 
       ,[catch_weight_indicator] 
       ,[purchasing_weight] 
       ,[class_id1] 
       ,[class_id2] 
       ,[class_id3] 
       ,[class_id4] 
       ,[class_id5] 
       ,[upc_or_ean] 
       ,[upc_or_ean_id] 
       ,[serialized] 
       ,[product_type] 
       ,[hose] 
       ,[fitting] 
       ,[d_length] 
       ,[catalog_item] 
       ,[short_code] 
       ,[track_lots] 
       ,[requisition] 
       ,[price1] 
       ,[price2] 
       ,[price3] 
       ,[price4] 
       ,[price5] 
       ,[price6] 
       ,[price7] 
       ,[price8] 
       ,[price9] 
       ,[price10] 
       ,[default_product_group] 
       ,[default_sales_discount_group] 
       ,[default_purchase_disc_group] 
       ,[sales_pricing_unit] 
       ,[sales_pricing_unit_size] 
       ,[purchase_pricing_unit] 
       ,[purchase_pricing_unit_size] 
       ,[extended_desc] 
       ,[commission_class_id] 
       ,[other_charge_item] 
       ,[invoice_type] 
       ,[pick_ticket_type] 
       ,[default_selling_unit] 
       ,[update_via_pricing_service] 
       ,[default_purchasing_unit] 
       ,[hi] 
       ,[ti] 
       ,[convert_quantities] 
       ,[haz_mat_flag] 
       ,[class_code] 
       ,[item_terms_discount_pct] 
       ,[tpcx_status] 
       ,[default_transfer_unit] 
       ,[keywords] 
       ,[fulltext_timestamp] 
       ,[vendor_consigned] 
       ,[created_by] 
       ,[disposition] 
       ,[source_type_cd] 
       ,[use_tags_flag] 
       ,[base_unit] 
       ,[tag_hold_class_uid] 
       ,[shippable_unit_flag] 
       ,[auto_allocation_flag] 
       ,[currency_id] 
       ,[iva_taxable_flag] 
       ,[restricted_flag] 
       ,[parker_product_cd] 
       ,[parker_division_cd] 
       ,[service_terms_discount_pct] 
       ,[service_commission_class_id] 
       ,[override_specific_costing] 
       ,[sold_outside_us_flag] 
       ,[configurable_flag] 
       ,[last_pricing_service_date] 
       ,[commodity_code] 
       ,[default_price_family_uid] 
       ,[spa_item_flag] 
       ,[unspsc_code] 
       ,[dci_code] 
       ,[epa_cert_req_flag] 
       ,[aia_enabled_flag] 
       ,[aia_remnant_qty] 
       ,[length] 
       ,[width] 
       ,[height] 
       ,[avail_for_sch_delivery_flag] 
       ,[item_type_cd] 
       ,[cust_parent_inv_mast_uid] 
       ,[manufacturer_program_type_uid] 
       ,[manufacturer_program_type_pct] 
       ,[use_revisions_flag] 
       ,[use_oc_tax_rules_flag] 
       ,[tally_flag] 
       ,[oc_print_on_pick_ticket_flag] 
       ,[oc_print_on_invoice_flag] 
       ,[single_use_or_reusable] 
       ,[unitconv_override_oe_flag] 
       ,[unitconv_override_purc_flag] 
       ,[item_sales_tax_class] 
       ,[lifo_pool_item_class] 
       ,[country_of_origin_req_flag] 
       ,[nmfc_hdr_uid] 
       ,[catch_lot_weight_flag] 
       ,[ucc128_pack_type_cd] 
       ,[ucc128_standard_pack_size] 
       ,[redemption_item_flag] 
       ,[redemption_value] 
       ,[bo_fill_canadian_purchase_flag] 
       ,[country_of_origin_code] 
       ,[apply_state_fuel_surcharge_flag] 
       ,[type_of_sale] 
       ,[commission_cost_multiplier] 
       ,[item_label_type_cd] 
       ,[drum_pickup_flag] 
       ,[item_notes] 
       ,[retail_accessories] 
       ,[hazmat_ormd_flag] 
       ,[hazmat_ormd_qty] 
       ,[functional_class] 
       ,[sales_set_quantity] 
       ,[suppress_from_web_flag] 
       ,[vndr_stock] 
       ,[ptlx_stock] 
       ,[pf_stock] 
       ,[round_prices] 
       ,[pumpoff_item] 
       ,[pumpoff_uom] 
       ,[conoco_division_class_id] 
       ,[buy_get_class] 
       ,[discontinued_date] 
       ,[label_group_item_flag] 
       ,[cylinder_item_flag] 
       ,[core_item_flag] 
       ,[generic_item_desc] 
       ,[allow_custom_desc_flag] 
       ,[manufacturer_name] 
       ,[brand_name] 
       ,[part_number] 
       ,[do_not_auto_allocate_desc] 
       ,[exclude_order_level_discount_flag] 
       ,[sample_item_flag] 
       ,[sample_inv_mast_uid] 
       ,[core_parent_item_id] 
       ,[attribute_group_uid] 
       ,[partner_program_labor_item_flag] 
       ,[brand_type] 
       ,[iqs_item_flag] 
       ,[import_as_direct_ship_flag] 
       ,[do_not_field_destroy_flag] 
       ,[inv_mast_uid_dup_usage] 
       ,[rolled_item_flag] 
       ,[exclude_from_edi832_flag] 
       ,[order_hold_class_id] 
       ,[default_direct_ship_disp_flag] 
       ,[buyer_id] 
       ,[packing_weight_tracking_option] 
       ,[tariff_surcharge_pct] 
       ,[tariff_surcharge_inv_mast_uid] 
       ,[exclude_from_auto_short_buy_flag] 
       ,[item_classification_id] 
       ,[hazmat_fee_inv_mast_uid] 
       ,[bol_class] 
       ,[rental_item_flag] 
       ,[rental_item_uid] 
       ,[dflt_dimension_scale] 
       ,[ecc_enabled_flag] 
       ,[local_item_flag]
FROM [inv_mast] with (NOLOCK) 
WHERE [delete_flag] <> 'Y')

SELECT  * FROM result