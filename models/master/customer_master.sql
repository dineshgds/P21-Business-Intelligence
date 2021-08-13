with source_terms AS
(
       select * from {{ ref('src_terms') }}
)
,
source_customers AS (
SELECT  c.[customer_id] 
       ,c.[customer_name] 
       ,c.[taxable_flag] 
       ,c.[resale_certificate] 
       ,c.[credit_limit] 
       ,c.[credit_limit_used]
       ,source_terms.[terms_id]
       -- c.[salesrep_id] 
       ,c.[customer_id_string] 
       ,c.[federal_exemption_number] 
       ,c.[other_exemption_number] 
       ,c.[last_fc_date] 
       ,c.[highest_credit_limit_used] 
       ,c.[credit_status] 
       ,c.[finance_charge_ship_to_id] 
       ,c.[use_consolidated_invoicing] 
       ,c.[invoice_print_qty] 
       ,c.[cod_required_flag]
       ,[pricing_method_description]
       -- c.[source_price_cd] 
       ,c.[po_no_required] 
       ,c.[consolidated_ship_to_id] 
       ,c.[job_pricing] 
       ,c.[remit_to_address_id] 
       ,c.[always_use_job_price] 
       ,c.[allow_non_job_item] 
       ,c.[prompt_for_non_job_item] 
       ,c.[allow_exceed_job_qty] 
       ,c.[allow_item_level_contract_flag] 
       ,c.[legacy_id] 
       ,c.[web_enabled_flag] 
       ,c.[req_pymt_upon_release_of_items]
       ,c.[date_acct_opened] 
       ,c.[created_by] 
       ,c.[date_created] 
       ,c.[date_last_modified] 
       ,c.[last_maintained_by] 
       ,c.[delete_flag] 
FROM {{ ref('stg_customer')}} AS c
LEFT JOIN source_terms ON  c.terms_id = source_terms.terms_id
)

SELECT  *
FROM source_customers 