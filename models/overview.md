{% docs __overview__ %}



## Analytics framework
The project is broadly divided into 4 layers of models, each one built on the top of other

|Models|Prefix|Description|
| ------------ | ------------ | ------------ |
|Source|`src_`|Models connected directly the original schema. Contains all the available columns using with the same name as defined by P21 dictionary|
|Staging|`stg_`|Models connected to the source `_src` models. Transformations limited to dropping unused and relevant columns. Some columns are also renamed based on internal vocabulary |
|Master|`_master`|Models built using multiple staging `_stg` models. Meaningful denormationlization is performed at this layer|
|Mart||Models built using multiple staging `_stg` models. Usually contains dynamic data that changes frequently|

{% enddocs %}
