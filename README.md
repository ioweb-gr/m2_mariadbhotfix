# Ioweb_MariaDbHotfix

Magento 2 module that patches the `SqlVersionProvider` to accept MariaDB 10.x and 11.x version strings. Without this patch, Magento throws a version compatibility error when running on recent MariaDB releases.

## What it does

Adds two version patterns to `Magento\Framework\DB\Adapter\SqlVersionProvider` via DI:

- `^10\.\d+\.` — matches any MariaDB 10.x release
- `^11\.\d+\.` — matches any MariaDB 11.x release

This is not a functional compatibility fix — it simply tells Magento to stop rejecting the MariaDB version string.

## Installation

```bash
composer require ioweb-gr/m2_mariadbhotfix
bin/magento module:enable Ioweb_MariaDbHotfix
bin/magento setup:upgrade
```

## Requirements

- PHP >= 7.0
- Magento 2

## License

Proprietary — IOWEB TECHNOLOGIES
