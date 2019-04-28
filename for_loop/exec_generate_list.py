# coding: utf-8

if __name__ == '__main__':
    import sys
    _f, _n  = int(sys.argv[1]), int(sys.argv[2])
    _n = [i for i in range(_n)]

    if _f == 0:
        from for_list import for_list
        for_list(_n)
    elif _f == 1:
        from list_comprehension import list_comprehension
        list_comprehension(_n)

