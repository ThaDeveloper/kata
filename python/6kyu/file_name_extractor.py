"""Assume it will start with date represented as long number
Followed by an underscore
Youll have then a filename with an extension
it will always have an extra extension at the end"""
#best practice 5 #clever 4
def extract_file_name(dirty_file_name):
        return '.'.join(dirty_file_name.split('_', 1)[-1].split('.')[0:2])

#clever
def extract_file_name(fname):
    """fname.split('_', 1)[1] splits the string by '_ 'and returns second part [1]
        This_is_an_ex.mpg.OTHEREXTENSION while .rsplit('.', 1)[0]
        splits by '.' and returns first part"""
    return fname.split('_', 1)[1].rsplit('.', 1)[0]