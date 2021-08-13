WITH result AS (

SELECT [code_uid]
      ,[code_no]
      ,[language_id]
      ,[code_description]
      ,[row_status_flag]
      ,[date_created]
      ,[date_last_modified]
      ,[last_maintained_by]
      ,[code_sub_description]
  FROM [code_p21])

SELECT  * FROM result