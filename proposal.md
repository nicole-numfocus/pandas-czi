---
title: Ensuring the continued growth of Pandas
bibliography: biblio.bib
link-citations: true
urlcolor: cyan
numbersections: true
autoidentifiers: true
authors:
  - Joris Van den Bossche
  - Tom Augspurger
abstract: |
  ...
---

## 3a. Progress Report (250 words)

**Maintenance**

Our funded maintenance work has primarily focused on

1. Organizing pandas' community of volunteers
2. Ensuring software quality by quickly responding to high-priority issues (e.g. https://github.com/pandas-dev/pandas/issues/35517#issuecomment-667668033)

Our maintainers have organized a large pool of eager volunteers to work on small
pieces of large projects. For example, we've closed many issues and ensured
future stability by our maintainers combing the issue tracker for fixed but not
closed issues, labeling them as "needs tests", and having a volunteer translate
the issue into a pull request with a unit test. Our last two releases had a total
of 676 contributors, 457 of which were first-time contributors.

**Extension Types**

We've continued to expand the extension array interface work better with the rest of pandas.

* Interface for concatenating Extension types: https://github.com/pandas-dev/pandas/pull/33607
* Allow masked extension arrays in pandas' algorithms (https://github.com/pandas-dev/pandas/pull/33064, https://github.com/pandas-dev/pandas/pull/30982)
* Allow extension arrays in the index (in progress: https://github.com/pandas-dev/pandas/issues/22861)

**Native String Dtype**

We worked with Maarten Breddels to implement a framework for string kernels in Apache Arrow.
Several kernels (e.g. ``str.lower``) have been implemented. Maarten is about 30% of the way
through his budget and will spend the remaining time implementing more kernels. With the release
of Arrow 1.0, we can provide a wrapper in pandas. That work has started and should finish by
the end of September.

## 4. Proposal Purpose: (255 characters)

We aim to ensure the continued health of the pandas library by dedicating
resources to specifically to maintenance and implementing consistent missing
value handling.

## 6. Abstract (250 words)

This proposal seeks funding to help with the maintenance of pandas, a Python
library providing high-performance, easy-to-use data structures. pandas'
popularity continues to grow, and that popularity is reflected in the increasing
number of issues and pull requests opened on pandas' GitHub repository. We hope
to use the funding to ensure the continued health of the pandas project through
two main avenues.

First, we'd fund pandas maintainers to do the day-to-day work of maintaining a
large project like pandas. This would include triaging issues, reviewing pull
requests, maintaining release infrastructure, community building, and
periodically cleaning up the issue tracker.

Second, we'd work to improve missing data handling within pandas. pandas'
current handling of missing data is inconsistent across data types, resulting in
confusing behavior for users and additional maintenance burden to handle the
various cases. By implementing consisting missing data handling for all data
types we hope to reduce the number of special cases within pandas, giving a
simpler and easier to use library.

## 7. Work Plan (750 words**

**Maintenance**

**Nullable Data Types**

In pandas 1.0, experimental "nullable" data types were introduced: the nullable
integer, string and boolean data types using the new `pd.NA` value to represent
scalar missing values. The goal of those nullable data types is to provide
consistent missing value handling accross the data types (with a behaviour that
deviates from `np.nan` which is historically being used as missing value
indicator, but is limited to float and object data types).

Those nullable data types are experimental and currently opt-in (the user
explicitly needs to use them). They are implemented based on the pandas'
["Extension Array interface"](https://pandas.pydata.org/pandas-docs/stable/development/extending.html#extension-types),
which enables working with arrays of data that aren't limited to NumPy's data
types and in-memory data format. The current nullable data types included in
pandas are implemented as "masked arrays" (using one numpy array for the actual
data and one for a validity mask, instead of a single numpy array).

Long term, we want to expand this consistent missing value handling to other
data types (i.e. float, categorical, etc, and potentially also datetime-related
data types), and we want to make those nullable data types the default data
types.

[long term, we want to provide consistent missing value handling as the default user experience]

To this end, we need to provide a path forward to make those the default in a
future version of pandas. Further work is needed to ensure the nullable data
types are a full replacement for the current data types, covering all pandas
operations and methods. This will require both improvements to the general
ExtensionArray mechanism as specific enhancements to the nullable data types /
masked arrays.

Deliverables / work items:

- Provide a mechanism to easily opt-in to use the nullable data types across the board.
- General improvements to the Extension Array interface:
  - Enable using extension arrays for the Index
  - Better support and customization of construction and casting operations (`astype()`)
  - Remaining numerical operations (e.g. `round`, `count`, cumulative methods, numpy protocols, ...)
- Specific improvements to the masked array implementation and algorithm support of the nullable data types:
  - Investigate ways to optimize the storage (optional masks, bitmasks)
  - Support masked arrays directly in more algorithms
- Expand nullable support to new data types (pending discussions on which data types to support).

The general improvements to the ExtensionArray interface will also benefit other
projects making use of this interface (e.g. pint-pandas, awkward-array,
GeoPandas, etc).

At some point make those the default. Initially provide a way to enable them.
Goal of this item is to ensure the full pandas API works with those dtypes

## 8. Milestones and Deliverables (500 words)

**Maintenance**

**Nullable Data Types**
