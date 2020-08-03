---
title: Ensuring the continued growth of Pandas
bibliography: biblio.bib
link-citations: true
urlcolor: cyan
numbersections: true
autoidentifiers: true
authors:
  - Joris van den Bossche
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

## 8. Milestones and Deliverables (500 words)

**Maintenance**

**Nullable Data Types**
