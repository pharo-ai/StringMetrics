# StringMetrics

[![Build Status](https://travis-ci.org/pharo-ai/StringMetrics.svg?branch=master)](https://travis-ci.org/pharo-ai/StringMetrics)
[![Build status](https://ci.appveyor.com/api/projects/status/rvuim7w31nf8s0r9?svg=true)](https://ci.appveyor.com/project/olekscode/stringmetrics)
[![Coverage Status](https://coveralls.io/repos/github/pharo-ai/StringMetrics/badge.svg?branch=master)](https://coveralls.io/github/pharo-ai/StringMetrics?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/pharo-ai/StringMetrics/master/LICENSE)

Various metrics of string similarity implemented in [Pharo](https://pharo.org/). At the moment, the folloing metrics are supported:

- [Levenshtein distance](https://en.wikipedia.org/wiki/Levenshtein_distance) - minimum number of single-character edits (insertions, deletions, or substitutions) required to change one string into the other.

## How to install it?

To install `StringMetrics`, go to the Playground (Ctrl+OW) in your [Pharo](https://pharo.org/) image and execute the following Metacello script (select it and press Do-it button or Ctrl+D):

```Smalltalk
Metacello new
  baseline: 'StringMetrics';
  repository: 'github://pharo-ai/StringMetrics/src';
  load.
```

## How to depend on it?

If you want to add a dependency on `StringMetrics` to your project, include the following lines into your baseline method:

```Smalltalk
spec
  baseline: 'StringMetrics'
  with: [ spec repository: 'github://pharo-ai/StringMetrics/src' ].
```

If you are new to baselines and Metacello, check out the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) tutorial on Pharo Wiki.

## How to use it?

Here are some examples of calculating the Levenshtein distance between two strings:

```Smalltalk
'a' levenshteinDistanceTo: 'b'. "1"
'honda' levenshteinDistanceTo: 'hyundai'. "3"
'kitten' levenshteinDistanceTo: 'sitting'. "3"
'honda' levenshteinDistanceTo: 'HONDA'. "5"
```
