# dollar_to_speech('$0.00') == '0 dollars.'
# dollar_to_speech('$1.00') == '1 dollar.'
# dollar_to_speech('$0.01') == '1 cent.'
# dollar_to_speech('$5.00') == '5 dollars.'
# dollar_to_speech('$20.18') == '20 dollars and 18 cents.'
# dollar_to_speech('$-1.00') == 'No negative numbers are allowed!'
def dollar_to_speech(value):
    if '-' in value:
        return "No negative numbers are allowed!"
    else:
        a = value.replace('$',"").split('.')
        if int(a[0]) > 1 and int(a[1]) >1:
        return  '{} dollars and {} cents.'.format(int(a[0]), int(a[1]))
        elif int(a[0]) == 1 and int(a[1]) == 1:
        return  '{} dollar and {} cent.'.format(int(a[0]), int(a[1]))
        elif int(a[0]) < 1 and int(a[1]) < 1 or int(a[0]) > 1 and int(a[1]) < 1:
        return  '{} dollars.'.format(int(a[0]))
        elif int(a[0]) == 1 and int(a[1]) < 1:
        return  '{} dollar.'.format(int(a[0]))
        elif int(a[0]) > 1 and int(a[1]) ==1:
        return  '{} dollars and {} cent.'.format(int(a[0]), int(a[1]))
        elif int(a[0]) == 1 and int(a[1]) > 1:
        return  '{} dollar and {} cents.'.format(int(a[0]), int(a[1]))
        elif int(a[1]) > 1:
        return  '{} cents.'.format(int(a[1]))
        else:
        return  '{} cent.'.format(int(a[1]))


"""Now refactored"""

def dollar_to_speech(value):
    d, c = map(int, value[1:].split('.'))
    print(d, c)
    if d < 0:
        return 'No negative numbers are allowed!'
    if d == 0 == c:
        return '0 dollars.'
    s = ''
    if d > 0:
        s += '{} dollar{}{}'.format(d, 's' * (d > 1), ' and ' * (c > 0))
    if c > 0:
        s += '{} cent{}'.format(c, 's' * (c > 1))
    return s + '.'