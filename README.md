# resin-screenly-ose

**Work in progress!**

Deploy [Screenly OSE](https://github.com/wireload/screenly-ose), the digital
signage application for [Raspberry Pi](https://raspberrypi.org) with
[resin.io](https://resin.io).

See the [resin.io getting started guide](https://docs.resin.io/raspberrypi3/python/getting-started/)
for how to set up your Raspberry Pi and your resin.io account. Deploy this project
by `git push` to your resin.io application

## Settings

### Configuration

You might want to modify the seetings in `screenly.conf`. Currently the same
configuration is sent to all devices in the fleet.

### Runtime Settings

* By default the control Screenly control dashboard exposed on all interfaces,
  set the [environment variable](https://docs.resin.io/management/env-vars/)
  `VPN_ONLY` equal to `1` if the control dashboard should be only accessible
  through the [device public URL](https://docs.resin.io/runtime/runtime/#public-device-urls).


## To Do

Some outstanding tasks:

* enable customizing the screenly configuration at runtime

## License

Copyright 2017 Resinio Ltd

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
