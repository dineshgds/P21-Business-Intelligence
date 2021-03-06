with result AS (
SELECT [location_id]
      ,[qty_on_hand]
      ,[qty_in_process]
      ,[date_created]
      ,[date_last_modified]
      ,[last_maintained_by]
      ,[company_id]
      ,[last_rec_po]
      ,[last_rec_po_with_disc]
      ,[gl_account_no]
      ,[purch_or_transfer]
      ,[next_due_in_po_cost]
      ,[next_due_in_po_date]
      ,[revenue_account_no]
      ,[cos_account_no]
      ,[sellable]
      ,[moving_average_cost]
      ,[standard_cost]
      ,[protected_stock_qty]
      ,[inv_min]
      ,[inv_max]
      ,[safety_stock]
      ,[stockable]
      ,[replenishment_location]
      ,[months_in_season]
      ,[average_monthly_usage]
      ,[product_group_id]
      ,[purchase_class]
      ,[cycle_counting_category]
      ,[purchase_discount_group]
      ,[sales_discount_group]
      ,[no_charge]
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
      ,[replenishment_method]
      ,[order_quantity]
      ,[qty_allocated]
      ,[qty_backordered]
      ,[qty_in_transit]
      ,[track_bins]
      ,[default_in_oe]
      ,[period_first_stocked]
      ,[year_first_stocked]
      ,[usage_lock]
      ,[usage_lock_period]
      ,[usage_lock_year]
      ,[primary_bin]
      ,[tax_group_id]
      ,[qty_reserved_due_in]
      ,[date_last_counted]
      ,[inv_mast_uid]
      ,[requisition]
      ,[deadstock_flag]
      ,[lot_bin_integration]
      ,[add_to_cycle_count]
      ,[default_shipment]
      ,[primary_supplier_id]
      ,[on_obt_flag]
      ,[on_release_schedule_flag]
      ,[on_backorder_flag]
      ,[last_sale_date]
      ,[last_purchase_date]
      ,[buy]
      ,[make]
      ,[created_by]
      ,[periods_to_supply_min]
      ,[periods_to_supply_max]
      ,[putaway_rank]
      ,[inv_last_changed_date]
      ,[iva_taxable_flag]
      ,[item_putaway_attribute_uid]
      ,[splittable_flag]
      ,[min_replenishment_qty]
      ,[discontinued]
      ,[allow_ds_discontinued_items]
      ,[allow_sp_discontinued_items]
      ,[safety_stock_type]
      ,[service_level_measure]
      ,[service_level_pct_goal]
      ,[demand_pattern_cd]
      ,[demand_pattern_evaluation_date]
      ,[demand_forecast_formula_uid]
      ,[pattern_manually_edited_flag]
      ,[demand_pattern_behavior_cd]
      ,[pattern_like_inv_mast_uid]
      ,[pattern_like_location_id]
      ,[behaves_like_lock_flag]
      ,[behaves_like_lock_period]
      ,[behaves_like_lock_year]
      ,[landed_cost_account_no]
      ,[price_family_uid]
      ,[delete_flag]
      ,[default_selling_unit]
      ,[cardlock_product_id]
      ,[loc_item_type_cd]
      ,[loc_cust_parent_inv_mast_uid]
      ,[main_bulk_location_flag]
      ,[dflt_source_loc_flag]
      ,[cycle_count_flag]
      ,[promotional_flag]
      ,[rma_revenue_account_no]
      ,[future_standard_cost]
      ,[effective_date]
      ,[assembly_prompt_option]
      ,[restricted_flag]
      ,[drp_item_flag]
      ,[saved_demand_forecast_formula_uid]
      ,[demand_formula_computed_year_period]
      ,[demand_pattern_computed_year_period]
      ,[year_period_last_forecast]
      ,[vendor_rebate_account_no]
      ,[transfer_usage_percent]
      ,[manufacturer_req_stock_flag]
      ,[fc_bin]
      ,[pumpoff_item]
      ,[pumpoff_uom]
      ,[on_future_order_flag]
      ,[on_future_prod_order_flag]
      ,[max_liability]
      ,[max_transfer_qty]
      ,[alt_tax_group_id]
      ,[returnable_flag]
      ,[iqs_item_flag]
      ,[slab_track_bins_flag]
      ,[edi_832_discontinued_sent_flag]
      ,[buyer_id]
      ,[ta_rental_revenue_account_no]
      ,[cycle_count_no]
      ,[cycle_count_qty]
      ,[ta_rental_tax_group_id]
      ,[transfer_conversion_uom]
      ,[ecc_enabled_flag]
      ,[inv_mast_uid_dup_usage]
      ,[transfer_order_point]
      ,[transfer_order_qty]
      ,[critical_item_flag]
      ,[deviation_lookback_pds]
      ,[deviation_mult_one_pd]
      ,[deviation_mult_two_pd]
      ,[deviation_mult_three_pd]
      ,[min_safety_stock_days]
      ,[max_safety_stock_days]
      ,[crit_item_deviation_mult]
      ,[crit_min_safety_stock_days]
      ,[crit_max_safety_stock_days]
      ,[osmi_item_flag]
      ,[local_item_flag]
  FROM [inv_loc] with (NOLOCK)
  WHERE delete_flag <> 'Y' )

SELECT  * FROM result