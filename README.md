# balena-librephotos

[LibrePhotos](https://librephotos.com/) is a self-hosted open source photo management service.

## Hardware Required

- Raspberry Pi 3/4 (64-bit)
- 32GB MicroSD card or larger

## Getting Started

You can one-click-deploy this project to balena using the button below:

[![Deploy with balena](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/klutchell/balena-librephotos&defaultDeviceType=raspberrypi4-64)

## Manual Deployment

Alternatively, deployment can be carried out by manually creating a [balenaCloud account](https://dashboard.balena-cloud.com) and application,
flashing a device, downloading the project and pushing it via the [balena CLI](https://github.com/balena-io/balena-cli).

### Environment Variables

| Name                  | Description                                                                                                                                            |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `SECRET_KEY`          | Secret Key. Generate one [here](https://www.random.org/strings/?num=10&len=20&digits=on&upperalpha=on&loweralpha=on&unique=on&format=html&rnd=new).    |
| `ADMIN_EMAIL`         | Email for the administrative user. Default is `admin@example.com`.                                                                                     |
| `ADMIN_USERNAME`      | Username for the Administrator login. Default is `admin`.                                                                                              |
| `ADMIN_PASSWORD`      | Password for the administrative user you set above. Default is `balena`.                                                                               |
| `TIME_ZONE`           | A string representing the time zone for this installation. See the [list of time zones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). |
| `SKIP_PATTERNS`       | Comma delimited list of patterns to ignore.                                                                                                            |
| `WEB_CONCURRENCY`     | Number of workers, which take care of the request to the api. Default is `2`.                                                                          |
| `MAPBOX_API_KEY`      | Get a [Mapbox API Key](https://account.mapbox.com/auth/signup/) to see on a map where all your photos where taken.                                     |
| `HEAVYWEIGHT_PROCESS` | Number of workers, when scanning pictures. Default is `1`.                                                                                             |

## Usage/Examples

Once your device joins the fleet you'll need to allow some time for it to download the application and start the services.

When it's done you should be able to access the access the app at <http://librephotos.local>.

The default credentails are `admin/balena` and you should change them immediately via the Admin Area.

Additional usage instructions for LibrePhotos can be found here: <https://docs.librephotos.com/>.

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.
