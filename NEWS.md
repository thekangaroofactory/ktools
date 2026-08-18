# ktools 0.9.9

## New functions / features:
- Implement the action_link function #61
- Implement an input decode function for action_link #62
- Implement the on_click event function #63
- Implement use plot theme function #65

## Improvements:
- use_shiny function should be reviewed #69
- copy_template should allow file rename #70
- Copy_template function should take the package as an argument #71
- [filter_date] The function needs to check for missing date column #78
- [has_date] Function should check for empty data.frame (no column) #79

## Miscellaneous:
- Cleanup functions #67
- Review package dependencies #76
- Prepare package submission to CRAN #72

## Documentation:
- Review function documentation #74
- Update copy_template example #77
- Implement package documentation website #56
- Write an article to cover complex instructions using actionLinks #82

## Test coverage
- Converge QA #73

## Deprecated functions
- date_range()
- seq_timestamp()


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

- Added a `NEWS.md` file to track changes to the package.
