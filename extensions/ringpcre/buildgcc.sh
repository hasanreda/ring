# TODO
# this should be converted into autotools script

mkdir lib/

gcc -c -fpic ring_pcre.c pcre2lib/pcre2_auto_possess.c pcre2lib/pcre2_chartables.c \
    pcre2lib/pcre2_compile.c pcre2lib/pcre2_config.c pcre2lib/pcre2_context.c \
    pcre2lib/pcre2_dfa_match.c pcre2lib/pcre2_error.c pcre2lib/pcre2_find_bracket.c \
     pcre2lib/pcre2_jit_compile.c pcre2lib/pcre2_maketables.c \
     pcre2lib/pcre2_match.c pcre2lib/pcre2_match_data.c pcre2lib/pcre2_newline.c \
     pcre2lib/pcre2_ord2utf.c pcre2lib/pcre2_pattern_info.c \
     pcre2lib/pcre2_serialize.c pcre2lib/pcre2_string_utils.c \
     pcre2lib/pcre2_study.c pcre2lib/pcre2_substitute.c \
     pcre2lib/pcre2_substring.c pcre2lib/pcre2_tables.c pcre2lib/pcre2_ucd.c \
     pcre2lib/pcre2_valid_utf.c pcre2lib/pcre2_xclass.c \
     -DHAVE_CONFIG_H -DPCRE2_CODE_UNIT_WIDTH=8 -g -Wall -I $PWD/../../include -I.
gcc --shared -o lib/libring_pcre2.so *.o

rm *.o

cp lib/libring_pcre2.so /usr/local/lib/ring/libring_pcre2.so
