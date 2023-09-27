#!/usr/bin/python3
def safe_print_list(my_list=[], x=0):
    position = 0
    while x > position:
        try:
            print(my_list[position], end="")
            position = position + 1

        except IndexError:
            print()
            return position

    print()
    return position
