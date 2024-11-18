function main()
    
    math.randomseed(os.time())

    local max_delay_seconds = m.getvar("tx.cf_max_delay")
    local random = m.getvar("tx.cf_delay_random_num")

    -- delay_seconds = tostring(math.random(1, 10 * max_delay_seconds) / 10)
    delay_seconds = max_delay_seconds / 10.0 * random

    m.log(2, string.format("Chaos Fortress plugin delaying %s seconds (max %s, random %s)", delay_seconds, max_delay_seconds, random))

    os.execute("sleep " .. delay_seconds)

    return 1

end

