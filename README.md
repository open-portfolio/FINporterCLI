# FINporterCLI

A command-line utility for detecting and transforming investing data.

_FINporterCLI_ is part of the [OpenAlloc](https://github.com/openalloc) family of open source Swift software tools.

Used by investing apps like [Flow Allocator](https://open-portfolio.github.io/allocator) and [Flow Worth](https://open-portfolio.github.io/worth).

## Disclaimer

The developers of this project (presently OpenAlloc LLC) are not financial advisers and do not offer tax or investing advice. 

Where explicit support is provided for the transformation of data format associated with a service (brokerage, etc.), it is not a recommendation or endorsement of that service.

Software will have defects. Input data can have errors or become outdated. Carefully examine the output from _FINporter_ for accuracy to ensure it is consistent with your investment goals.

For additional disclaiming, read the LICENSE, which is Apache 2.0.

## Usage:

```bash
$ swift build
$ .build/debug/finport

OVERVIEW: A utility for transforming financial data.

USAGE: finport <subcommand>

OPTIONS:
  --version               Show the version.
  -h, --help              Show help information.

SUBCOMMANDS:
  list                    List things available.
  schema                  Describe schema details.
  detect                  Detect schema of file.
  transform               Transform data in file.

  See 'finport help <subcommand>' for detailed help.
```

If your favorite product (e.g., _Flow Allocator_) hasn't yet incorporated the latest FINporter library supporting your service, you can still transform exports using `finport`. See examples above.

## See Also

This app is a member of the _Open Portfolio Project_.

* [_Open Portfolio_](https://open-portfolio.github.io/) - _Open Portfolio_ product website
* [_Open Portfolio_ Project](https://github.com/open-portfolio/) - Github site for the development project, including full source code
## License

Copyright 2021, 2022 OpenAlloc LLC

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

## Contributing

Contributions are welcome. You are encouraged to submit pull requests to fix bugs, improve documentation, or offer new features. 

The pull request need not be a production-ready feature or fix. It can be a draft of proposed changes, or simply a test to show that expected behavior is buggy. Discussion on the pull request can proceed from there.

Contributions should ultimately have adequate test coverage and command-line support. See tests for current importers to see what coverage is expected.






