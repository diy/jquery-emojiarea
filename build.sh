#!/bin/bash
IFS='%'
out=jquery.emojiarea.js
out_min=jquery.emojiarea.min.js
banner="/*! jquery.emojiarea.js | https://github.com/diy/jquery-emojiarea | Apache License (v2) */"

# generate minified version...

curl -s -d compilation_level=SIMPLE_OPTIMIZATIONS \
        -d output_format=text \
        -d output_info=compiled_code \
		--data-urlencode "js_code@$out" \
        http://closure-compiler.appspot.com/compile \
        > $out_min

echo "$banner" | cat - $out_min > temp && mv temp $out_min

unset IFS