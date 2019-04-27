# coding: utf-8

"""

検証するファイル
    1ファイルあたり1行100文字のファイルを1MB, 10MB, 100MB, 1000MBのファイル
"""

from enum import IntEnum


class Read(IntEnum):
    m_read = 0
    m_readline = 1
    m_readlines = 2
    m_iterator = 3


def main():
    import sys
    path = sys.argv[1]
    method = int(sys.argv[2])

    if method == Read.m_read.value:
        from reader.ext_read import read
        read(path)
    elif method == Read.m_readline.value:
        from reader.ext_readline import readline
        readline(path)
    elif method == Read.m_readlines.value:
        from reader.ext_readlines import readlines
        readlines(path)
    elif method == Read.m_iterator.value:
        from reader.ext_iterator import iterator
        iterator(path)


if __name__ == '__main__':
    main()