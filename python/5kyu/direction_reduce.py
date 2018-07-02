
"""Getting the shortest direction
In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is 
going north and coming back right away. What a waste of time!
Better to do nothing.

The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate 
each other, therefore, the final result is [] (nil in Clojure).
"""
#best practice
opposite = {'NORTH': 'SOUTH', 'EAST': 'WEST', 'SOUTH': 'NORTH', 'WEST': 'EAST'}
def dirReduc(plan):
    new_plan = []
    for d in plan:
        new_plan.pop() if new_plan and new_plan[-1] == opposite[d] else new_plan.append(d)
    return new_plan

#clever
def dirReduc(arr):
    dir = " ".join(arr)
    dir2 = dir.replace("NORTH SOUTH",'').replace("SOUTH NORTH",'').replace("EAST WEST",'').replace("WEST EAST",'')
    dir3 = dir2.split()
    return dirReduc(dir3) if len(dir3) < len(arr) else dir3

#best practice clever
opposite = {'NORTH': 'SOUTH', 'EAST': 'WEST', 'SOUTH': 'NORTH', 'WEST': 'EAST'}
def dirReduc(plan):
    new_dir= []
    [new_dir.pop() if new_dir and  new_dir[-1] == opposite[d] else new_dir.append(d) for d in plan ]
    return new_dir