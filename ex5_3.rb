puts("radius ?")
s = gets()
radius = Integer(s)
area = radius ** 2 * 3.14 * 4
volume = radius ** 3 * 3.14 * (4 / 3)
puts("surface area=#{area}, volume=#{volume}")