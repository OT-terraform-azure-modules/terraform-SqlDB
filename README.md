Azure SQL DB Terraform module
=====================================

[![Opstree Solutions][opstree_avatar]][opstree_homepage]

[Opstree Solutions][opstree_homepage] 

  [opstree_homepage]: https://opstree.github.io/
  [opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png

Terraform module which creates SQL DB on Azure.

These types of resources are supported:

* [SQLDB]()

Terraform versions
------------------

Terraform 0.13.

Usage
------

```hcl
module "rgSqlDb" {
  source            = "git::https://gitlab.com/ot-azure/terraform/SQLDB.git?ref=mehul"
  sqlDb_RG_Name     = module.azurerg.rgName
  sqlDb_Location    = module.azurerg.rgLocation
  sqlDb_Server_Name = module.rgSqlServerPrimary.sqlserverprimaryname
  sqlDb_Tag = {
    Name : "SqlDB"
  }
}
```

Tags
----
* Tags are assigned to resources with name variable as prefix.
* Additial tags can be assigned by tags variables as defined above.

Inputs
------
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| sqlDb_RG_Name | Name of the Resource Group | `string` | `"opstree"` | yes |
| sqlDb_Location | Location in which the SQL Database would be created | `string` | `"eastus"` | yes |
| sqlDb_Server_Name | Name of the Primary SQL Server | `string` | `"sqlServer-Primary"` | yes |
| sqlDb_Tag | Tag to associate with te SQL database | `string` | `"sqlDB"` | no |

Output
------
| Name | Description |
|------|-------------|
| sqlDb_ID | It will fetch the ID of SQLDB |

## Related Projects

Check out these related projects. 

### Contributors

|  [![Mehul Sharma][mehul_avatar]][mehul_homepage]<br/>[Mehul Sharma][mehul_homepage] |
|---|

  [mehul_homepage]: https://gitlab.com/mehulsharma2010
  [mehul_avatar]: https://gitlab.com/uploads/-/system/user/avatar/7039343/avatar.png?width=300
