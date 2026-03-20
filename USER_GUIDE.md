# User Guide — Ioweb_MariaDbHotfix

## Overview

This module has no admin configuration panel. It works automatically once enabled.

It patches Magento 2's database version check so that MariaDB 10.x and 11.x are accepted as supported database versions.

## When to Use

Install this module on any Magento 2 store running on MariaDB 10.x or 11.x that receives a database version compatibility error during setup or upgrade.

## How It Works

Magento's `SqlVersionProvider` maintains a list of supported version patterns. This module injects two additional patterns via DI:

| Pattern key | Regex | Matches |
|---|---|---|
| `MariaDB-10x` | `^10\.\d+\.` | MariaDB 10.0 through 10.x |
| `MariaDB-11x` | `^11\.\d+\.` | MariaDB 11.0 through 11.x |

No database schema changes are made. No data migrations run.

## No Admin Settings

There are no system configuration entries. Enable/disable via:

```bash
bin/magento module:enable Ioweb_MariaDbHotfix
bin/magento module:disable Ioweb_MariaDbHotfix
bin/magento setup:upgrade
```
