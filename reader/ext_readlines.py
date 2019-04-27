# coding: utf-8

"""
一時ファイルを利用しないで、テキストを加工した場合を想定
残念ながら、メモリに載せたままファイルの文字列を操作するのは遅いよう
"""

@profile
def readlines(path: str) -> str:
    text = ""
    with open(path, "r") as file:
        texts = file.readlines()
        for line in texts:
            text += line

    return text
