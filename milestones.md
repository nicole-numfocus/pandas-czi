# Milestones

1. Library maintenance

   * Metrics: Reduced open issue backlog[1]. Increase growth rate of new contributors.
   * Milestones: N/A
   * Timeline: Duration of the grant.
   
2. Extension Types

   * Metrics: Reduce number of "extension array" issues[2]. Reduced complexity of pandas' internals,
     as measured by the complexity of pandas internals[3] and algorithms.
   * Milestones: A pandas release with all data backed by ExtensionArrays.
   * Timeline: 3 months of developer time.

3. Native String Data Type

   * Metrics: Lower memory usage to store a column of strings. Improved performance on String-related benchmarks.
   * Milestones: Release of pandas with opt-in `StringArray`. Release of pandas with a `StringArray` backed by non-NumPy memory.
   * Timeline: 2 months to implement `StringArray` and include it into pandas
     master. 4 months for finding new backing array library, implementing
     `StringArray` on top of it, and implementing the most popular string
     methods (can be done concurrently with implementing `StringArray`).

4. Documentation Validation

   * Metrics: Increase the number of errors checked in pandas' validation[5].
   * Milestones: Pandas' documentation passes all checks. Release of a package (numpydoc or 3rd-party) including these tools.
   * Timeline: 6 months of developer time.

5. Performance Monitoring

   * Metrics: Reduced downtime of the benchmark machine.
   * Milestones: Implementation of regression reporting. Implementation of on-demand checks.
   * Timeline: 3 months of developer time.

[1]: https://github.com/pandas-dev/pandas/issues?q=is%3Aopen+is%3Aissue
[2]: https://github.com/pandas-dev/pandas/issues?q=is%3Aopen+is%3Aissue+label%3AExtensionArray
[3]: https://github.com/pandas-dev/pandas/blob/master/pandas/core/internals/blocks.py
[4]: For example, https://pandas.pydata.org/speed/pandas/#strings.Methods.time_count
[5]: https://github.com/pandas-dev/pandas/blob/c7a1321029e07ee6d7ea30036649b488b2e362f7/ci/code_checks.sh#L263-L270
