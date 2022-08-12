txtFront='{BlockEntityTag: {Items: ['
txtInside1='{Slot: '
txtInside2='b, id: \\"minecraft:stone_bricks\\", Count: 64b}'
output=txtFront
i=0
while i <= 26:
    output += txtInside1+str(i)+txtInside2
    if i != 26:
        output+=','
    else:
        output+=']}}'
    i+=1
print(output)