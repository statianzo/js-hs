{-There exists exactly one Pythagorean triplet for which a + b + c = 1000.
- Find the product abc.-}


triplets = [a*b*(1000-(a+b))|a<-[1..1000],b<-[1..1000],a^2+b^2==(1000-(a+b))^2]
