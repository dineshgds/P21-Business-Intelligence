WITH stg_loc AS
(
    select * from {{ref('stg_locations')}}
)
,
stg_add AS
(
    select * from {{ref('stg_address')}}
)


SELECT sl.[company_id]
      ,sl.[location_id]
      ,sl.[location_name]
	  ,sa.[latitude]
	  ,sa.[longitude]
      ,sl.[default_branch_id]
      ,sl.[date_created]
      ,sl.[date_last_modified]
      ,sl.[last_maintained_by]
  FROM stg_loc as sl
  LEFT JOIN stg_add as sa on sl.location_id = sa.id

