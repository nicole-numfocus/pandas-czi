---
title: Pandas
---

## Goals

Fund the continued maintainance and improvments of Pandas, a Python library
providing high-performance, easy-to-use data structures.

## Work Plan

### Performance Monitoring

Pandas uses [airspeed velocity](https://asv.readthedocs.io/en/stable/) to
monitor for performance regressions. ASV itself is a fabulous tool, but requires
some additional work to be integrated into an open source project's workflow.

The [asv-runner](https://github.com/asv-runner) organization, currently made up
of pandas maintainers, provides tools built on top of ASV. We have a physical
machine for running a number of project's benchmarks, and tools managing the
benchmark runs and reporting on results.

We'd like to fund improvements and maintenance of these tools to

* Be more stable. Currently, they're maintained on the nights and weekends when
  a maintainer has free time.
* Tune the system for benchmarks to improve stability, following
  https://pyperf.readthedocs.io/en/latest/system.html
* Report performance regressions to a project rather than relying on maintainers manually checking for regressions.
* Build a GitHub bot to request ASV runs *before* a PR is merged. Currently, the
  benchmarks are only run nightly. They are too expensive to be run as part of
  every commit. But they could be run on demand from a maintainer (`@asv-bot run --bench=timeseries`)
* Pay for hosting a dedicated benchmark server.

This project has an impact beyond pandas. We run the benchmarks for many foundational librarys in the Scientific Python Ecosystem including xarray, Dask, scikit-image, scikit-learn, and PyMC3.

### Documentation Validation

To improve the quality and consistency of Pandas documentation, we've developed tooling to check docstrings in a variety of ways. Every docstring is checked for

1. Consistenty: Ensuring that every docstring has the same components (parameters, return values, notes, examples, etc.). Ensuring that each section is formatted correctly.
2. Completeness: Ensuring that every function parameter is documented.
3. Correctness: Ensuring that the examples run correctly.

When a user submits a Pull Request to pandas, their changes to the documentation are automatically checked, and informative error messages inform them of any issues.

Like many other projects, pandas uses the
[numpydoc](https://numpydoc.readthedocs.io/en/latest/) standard for writing
docstrings. With the collaboration of the numpydoc maintainers, we'd like to
move the checks to a package other than pandas so that other projects can easily
use them as well.

If possible, we'd like this project to be undertaken by a member of an unrepresented minority, with mentorship provided by the pandas maintaiers.
This project primarily requires experience with *using* pandas, NumPy, and related libraries, rather that deep knowledge of pandas' internals.
Pandas has a diverse community, just not at the maintainer level (yet).

## Existing Support

Pandas currently has about two FTE.

Anaconda Inc. funds Tom Augspurger (50% FTE).
Anaconda Inc. funds Brock Mendel (100% FTE).
Ursa Labs funds Joris van den Bossche (50% FTE).

## Figures

## References
