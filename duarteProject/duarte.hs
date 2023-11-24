part1 = 0
part2 = 420
part3 = 480
dur1 = 200
dur2 = 60
dur3 = 60
aula = 540

ePossivel = (part1 + dur1)<= part2 && (part2 + dur2)<= part3

eViavel = ePossivel && (part3 + dur3) <= aula