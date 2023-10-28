import math

def average_distance(x1,y1,x2,y2,x3,y3):
    x1_2, y1_2 = (x2 - x1) ** 2, (y2 - y1) ** 2
    distance_1 = math.sqrt(x1_2+y1_2)
    x2_3, y2_3 = (x3 - x2) ** 2, (y3 - y2) ** 2
    distance_2 = math.sqrt(x2_3+y2_3)
    x3_1, y3_1 = (x3 - x1) ** 2, (y3 - y1) ** 2
    distance_3 = math.sqrt(x3_1+y3_1)
    
    result = (distance_1 + distance_2 + distance_3)/3
    return result

def isCasiPalindromo(word:str):
    replace_letter = []
    for i in word:
        count = word.count(i)
        if count == 1:
            # print(f"letter {i}")
            replace_letter.append(i)
            
    if len(replace_letter) == 0:
        s = word.casefold()
        rever_word = reversed(s)
        return list(word) == list(rever_word)
    
    for i in word:
        for l in replace_letter:
            # print(f'replace: {i} to {l}')
            new_word = word.replace(l, i)
            # print(new_word)
            s = new_word.casefold()
            rever_word = reversed(s)
            
            re = list(new_word) == list(rever_word)
            # print(f'res: {re}')
            if re:
                return True
            
    return False

def NumMasPopular(numbers: list, len_array:int):
    unique = set(numbers)
    cast_string = ",".join([str(x) for x in numbers])
    print(f"Cast: {cast_string}")
    list_most_populart = {}
    for i in unique:
        count = cast_string.count(str(i))
        list_most_populart[i] = count
    
    print(list_most_populart)
    keys = list(list_most_populart.keys())
    return keys[0]
    
result = NumMasPopular([34,31,34,77,82],5)
print(result)