# FINporterCLI

A command-line utility for detecting and transforming investing data.

_FINporterCLI_ is part of the [OpenAlloc](https://github.com/openalloc) family of open source Swift software tools.

Used by investing apps like [FlowAllocator](https://flowallocator.app/FlowAllocator/index.html) and [FlowWorth](https://flowallocator.app/FlowWorth/index.html).

## Disclaimer

The developers of this project (presently FlowAllocator LLC) are not financial advisers and do not offer tax or investing advice. 

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

If your favorite product (e.g., _FlowAllocator_) hasn't yet incorporated the latest FINporter library supporting your service, you can still transform exports using `finport`. See examples above.

## See Also

The rest of the _FINporter_ family of libraries/tools (by the same author):

* [FINporter](https://github.com/openalloc/FINporter) - framework for importing and transforming investing data
* [FINporterChuck](https://github.com/openalloc/FINporterChuck) - importers for the Schwab brokerage
* [FINporterFido](https://github.com/openalloc/FINporterFido) - importers for the Fidelity brokerage
* [FINporterAllocSmart](https://github.com/openalloc/FINporterAllocSmart) - importer for the Allocate Smartly service
* [FINporterTabular](https://github.com/openalloc/FINporterTabular) - importer for transforming the AllocData schema

Swift open-source libraries (by the same author):

* [AllocData](https://github.com/openalloc/AllocData) - standardized data formats for investing-focused apps and tools
* [SwiftCompactor](https://github.com/openalloc/SwiftCompactor) - formatters for the concise display of Numbers, Currency, and Time Intervals
* [SwiftModifiedDietz](https://github.com/openalloc/SwiftModifiedDietz) - A tool for calculating portfolio performance using the Modified Dietz method
* [SwiftNiceScale](https://github.com/openalloc/SwiftNiceScale) - generate 'nice' numbers for label ticks over a range, such as for y-axis on a chart
* [SwiftRegressor](https://github.com/openalloc/SwiftRegressor) - a linear regression tool that’s flexible and easy to use
* [SwiftSeriesResampler](https://github.com/openalloc/SwiftSeriesResampler) - transform a series of coordinate values into a new series with uniform intervals
* [SwiftSimpleTree](https://github.com/openalloc/SwiftSimpleTree) - a nested data structure that’s flexible and easy to use

And commercial apps using this library (by the same author):

* [FlowAllocator](https://flowallocator.app/FlowAllocator/index.html) - portfolio rebalancing tool for macOS
* [FlowWorth](https://flowallocator.app/FlowWorth/index.html) - a new portfolio performance and valuation tracking tool for macOS


## License

Copyright 2021 FlowAllocator LLC

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

## Contributing

Contributions are welcome. You are encouraged to submit pull requests to fix bugs, improve documentation, or offer new features. 

The pull request need not be a production-ready feature or fix. It can be a draft of proposed changes, or simply a test to show that expected behavior is buggy. Discussion on the pull request can proceed from there.

Contributions should ultimately have adequate test coverage and command-line support. See tests for current importers to see what coverage is expected.






