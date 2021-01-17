# NAME

Data::FormValidator::Filters::WikiTrim - Trim filter for wikitext fields

# SYNOPSIS

```perl
use Data::FormValidator::Filters::WikiTrim qw(wiki_trim);

# Build Data::FormValidator profile
my $profile = {
    'required' => [qw( subject body )],
    'field_filters' => {
        'subject' => 'trim',
        'body'    => wiki_trim(),
    },
};
```

# DESCRIPTION

`Data::FormValidator::Filters::WikiTrim` provides a slightly different `trim`
filter than the default.  Rather than trimming _all_ leading/trailing
whitespace, we trim all leading _blank lines_ and all trailing whitespace.  In
a wikitext field, leading spaces on the first line could be important so they
need to be preserved (while leading blank lines aren't important and could be
trimmed out).

# METHODS

- wiki\_trim()

    Returns a filter which trims leading/trailing whitespace in a manner more
    suitable for wikitext entry fields; leading blank -lines- are trimmed, as
    well as all trailing whitespace.

    This differs from the standard "trim" filter in that we're only trimming
    leading blank -lines- but leave any leading whitespace on the first line;
    those leading spaces may be important.

# AUTHOR

Graham TerMarsch <cpan@howlingfrog.com>

# COPYRIGHT

Copyright (C) 2007, Graham TerMarsch.  All Rights Reserved.

This is free software; you can redistribute it and/or modify it under the same
license as Perl itself.

# SEE ALSO

[Data::FormValidator](https://metacpan.org/pod/Data%3A%3AFormValidator).
