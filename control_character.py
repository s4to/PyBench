# coding: utf-8

"""
制御コードの除外(改行コード, 水平タブを除く )
"""

import re

CTL_CHR = rb"[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]"


def generate_bchr(i: int) -> str:
    return chr(i).encode("utf-8")


def exclude_crl_chr(b: bytes) -> bytes:
    return re.sub(CTL_CHR, b"", b)


if __name__ == '__main__':

    for i in range(32):
        c = generate_bchr(i)
        exclude_c = exclude_crl_chr(c)

        if c == "\n".encode("utf-8") \
        or c == "\r".encode("utf-8") \
        or c == "\t".encode("utf-8"):
            assert c == exclude_c
        else:
            assert c != exclude_c

        print(i, c, exclude_c)

    for i in range(32, 128):
        c = generate_bchr(i)
        exclude_c = exclude_crl_chr(c)

        if c == b"\x7f":
            assert c != exclude_c
        else:
            assert c == exclude_c

        print(i, c, exclude_c)
