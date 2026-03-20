# Changelog

## [1.0.9] - 2026-03-20

### Changed
- Fixed package name to `ioweb-gr/m2_mariadbhotfix` (was `ioweb/mariadbhotfix`)
- Added `version` field to `composer.json`
- Bumped `setup_version` from `0.1.0` to `1.0.9`
- Removed legacy `magento/magento-composer-installer` dependency
- Added GitHub Actions auto-release workflow on semantic version tag push
- Added `create-junction.cmd` for Windows FTP mapping
- Added `README.md`, `USER_GUIDE.md`, `CHANGELOG.md`
- Removed `.idea/` IDE artifacts

## [1.0.8] - Previous

- Added MariaDB 11.x support pattern (`^11\.\d+\.`) to `SqlVersionProvider`

## [1.0.7] - Previous

- Added MariaDB 10.x support pattern (`^10\.\d+\.`) to `SqlVersionProvider`

## [0.1.0] - Initial

- Initial release: DI patch forcing Magento 2 to accept MariaDB 10.5+
