a = (1..10).to_a
i=0
ct=10
a.product(a,a,a) {|x| if x.max >= ct then i += 1 end}
