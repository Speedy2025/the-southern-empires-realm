pt1 = "execute if block "
pt1p5 = " #tser_main:air if block "
pt2 = " minecraft:sand run setblock "
pt3 = " minecraft:grass_block"

x = -2
y = -2
z = -2
for i in range(0,10):
    print ("")
while x <= 2:
    y=-2
    while y <= 2:
        z=-2
        while z <= 2:
            strTemp1 = "~" + str(x) + " ~" + str(y+1) + " ~" + str(z)
            strTemp2 = "~" + str(x) + " ~" + str(y) + " ~" + str(z)
            print(pt1+strTemp1+pt1p5+strTemp2+pt2+strTemp2+pt3)
            z+= 1
        y+= 1
    x+=1
# execute if block ~1 ~3 ~-2 #tser_main:air run setblock ~2 ~2 ~-2 grass_block
