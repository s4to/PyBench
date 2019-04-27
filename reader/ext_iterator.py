# coding: utf-8

"""
一時ファイルを利用しないで、テキストを加工した場合を想定
残念ながら、メモリに載せたままファイルの文字列を操作するのは遅いよう
"""

@profile
def iterator(path: str) -> str:
    text = ""
    with open(path, "r") as file:
        for line in file:
            text += line

    return text
