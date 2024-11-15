function main()
    
    math.randomseed(os.time())

    max_delay_seconds = 10

    delay_seconds = tostring(math.random(1, 10 * max_delay_seconds) / 10)

    m.log(2, string.format("Chaos Fortress plugin delaying %s seconds", delay_seconds))

    os.execute("sleep " .. delay_seconds)

    return 1

end

