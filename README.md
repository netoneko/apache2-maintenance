# apache2-maintenance

## List of recipies

* `apache2-maintenance::on`
* `apache2-maintenance::off`

## Custom JSON example:

```json
{
  "apache": {
    "document_root": "/srv/www/jammer_ci",
    "maintenance_period": 30
  }
}
```

`maintenance_period` is optional and by default equals 15 (in minutes).

