

# ktools 0.9.8

## New functions / features:
- [misc] Implement match.list function #57
- [misc] Implement plot screenshot function #34
- [misc] Implement has_date function #59
- [misc] Implement filter by date function #35


# ktools 0.9.7

## New functions / features:
- [misc] Implement match.option function #43
- [misc] Implement uuid function #45
- Implement a JavaScript dependency management function #46
- [misc] add simple ui function #42

## Miscellaneous
- [QA] Improve code coverage #47

## Bug fix:
- Secure with_js against missing package #48
- with_js produces malformed asset name #49
- with_js created userData entry with wrong name #50
- with_js should ensure dependency is inserted immediately #51
- with_js produced malformed userData name #52
- with_js needs to handle several dependency assets for the same package #53
- with_js should skip when session is NULL #54


# ktools 0.9.6-beta

## New functions / features:
- scan_code()

## Improvements:
- [date_range] date_range function should check if current year is in the inputs #31

## Bug fix:
- [date_range] date_range function returns min superior to max #28
- [date_range] Waning in date_range function when value is inferior to min #30
- [date_range] Function returns inputs instead of computed values #38
- [source_code] Wrong output to the console #32

## Miscellaneous
- Improve test coverage (date_range)


# ktools 0.9.5-beta

## New functions / features:
- create_data()
- trace_level()

## Improvements:

- [use_shiny] Check data_dir parameter to skip data folder
- [catl] Replace trace option by environment variable
- source_code()

## Miscellaneous

- Improve test coverage
- Add package license


# ktools 0.9.4-beta

## New functions / features:
- copy_template()
- use_shiny()
- templates: global.R, shiny server, shiny navbar ui, shiny module server & ui


# ktools 0.9.1-beta

## New functions / features:
- incat()
- catl()
- source_code()


# ktools 0.0.0.9000

* Added a `NEWS.md` file to track changes to the package.
