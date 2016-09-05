# HTTP "Date" header for elli

[![Build Status][Travis badge]][Travis link]

[Travis badge]: https://travis-ci.org/elli-lib/elli_date.svg?branch=master
[Travis link]: https://travis-ci.org/elli-lib/elli_date

This Elli middleware adds the "Date" header to responses. The current
date string is cached in an ETS-table and updated once a second. The
impact on performance is very low, if noticeable at all.

According to the HTTP 1.1 specification, the "Date" header in each
response is required.
