#-*- coding: utf-8 -*-

def role(dice, crit)
    results = []
    type = 10

    return results if crit < 2

    try = lambda do
        return results if dice.zero?

        rs = dice.times.collect{ (v = rand type) == 0 ? type : v }
        max = (mx = rs.max) >= crit ? type : mx 

        results << [max, rs]

        dice = rs.select{ |x| x >= crit }.size

        try.call
    end

    try.call

    results << results.inject(0){|r, e| r + e.first}
end

p role(14, 6)
