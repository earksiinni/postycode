Postycode
=========

Easily generate strings of escaped Unicode

# What?

Postycode builds strings of escaped Unicode symbols when you give it hexadecimal
code point ranges, like this:

    postycode 0050-0059 => '\u0050\u0051\u0052...'
    postycode 00A3-00B9 0003-0042 => '\u00A3\u00A4...\u0003\u004...'
    postycode 0352 0B23-0B59 0936 12AA => '\u0352\u0B23\u0B24...\u0935\u12AA'

# Why?

Sometimes you need long strings of escaped Unicode that cover big ranges.

For example, if you want to validate peoples' names in a Postgres database with
a regex, you might want to use an inclusion filter like `/\p{L}/` (all Unicode
letters).  However, Postgres doesn't support using Unicode properties like p{L}
in regular expressions, meaning that you'll have to construct a regex with
hundreds or thousands of escaped Unicode symbols...

    CONSTRAINT validate_name CHECK (name ~ '^[\u0041\u0042\u0042\u0043...]+')

...or, you can let Postycode do it for you.

# How?

    gem install postycode
    postycode 0012-00AB
    postycode --help

# Who?

Postycode was developed by [Ersin Akinci](http://www.ersinakinci.com/ "Ersin Akinci's home page").