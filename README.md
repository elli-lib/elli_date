# elli_date

[![Build Status][Travis badge]][Travis link]
[![Hex Badge][Hex badge]][Hex link]

[Travis badge]: https://travis-ci.org/elli-lib/elli_date.svg?branch=master
[Travis link]: https://travis-ci.org/elli-lib/elli_date
[Hex badge]: https://img.shields.io/hexpm/v/elli_date.svg
[Hex link]: https://hex.pm/packages/elli_date

*Elli middleware adding the Date header.*

This Elli middleware adds the "Date" header to responses. The current
date string is cached in an ETS-table and updated once a second. The
impact on performance is very low, if noticeable at all.

According to the HTTP 1.1 specification, the "Date" header in each
response is required.

## Usage

To use `elli_date`, just add it to your `mods` in your [`elli_middleware`][]
`Config`.

```erlang
Config = [
          {mods, [
                  {elli_date, []},
                  %% ...,
                 ]}
         ],
elli:start_link([
                 %% ...,
                 {callback, elli_middleware},
                 {callback_args, Config}
                ]).
```

[`elli_middleware`]: https://github.com/elli-lib/elli/blob/develop/doc/elli_middleware.md
