# coding: utf-8

"""
一時ファイルを利用しないで、バイナリファイルを加工する場合

検証するファイル
    1ファイルあたり1行100文字のファイルを1MB, 10MB, 100MB, 1000MBのファイル
"""

@profile
def read(path: str) -> str:
    with open(path, "br") as binary_file:
        b = binary_file.read()

    return b


"""
# MEMO: 下記コメントアウトされた方法だと、各ファイルをオープンした際にどの程度メモリを利用したかわからない。
        readが実行されるたびに、結果が合計されていくため。
@profile
def test_open_file():
    # MEMO:
    # ファイル別で実行する理由としては、ループでまわすとループ内の合計、関数化しても、関数の合計としてメモリ利用量が出力されてしまう...。
    # ファイルサイズ別に測定したいので、仕方なく個別に実行する。
    # 良い方法はないのか...。

    import os
    c_dir = os.getcwd()
    resource_dir = c_dir + "/resource/"
    t1 = resource_dir + "t1M.txt"
    t10 = resource_dir + "t10M.txt"
    t100 = resource_dir + "t100M.txt"
    t1000 = resource_dir + "t1000M.txt"

    # 1MB
    read(t1)

    # 10MB
    read(t10)

    # 100MB
    read(t100)

    # 1000MB
    read(t1000)
"""

if __name__ == '__main__':
    import sys
    read(sys.argv[1])
