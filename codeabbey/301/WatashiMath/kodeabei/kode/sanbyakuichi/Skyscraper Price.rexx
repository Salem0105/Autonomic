calculateProfit: procedure
  parse arg N M X
  totalProfit = 0
  increment = 0

  do floor = 0 to N - 1
    totalProfit = totalProfit + (X + increment) * (N // M - (floor // M))
    increment = increment + (floor + 1) % M == 0 then 1000 else 0
  end

  return totalProfit
end

handleTestcases: procedure
  parse arg testcases
  results = ''

  do i = 1 to testcases[1]
    parse var testcases[i] N M X
    results = results calculateProfit(N, M, X) ' '
  end

  return results
end

testcases = .[3, [1 1 1000], [3 2 1000], [30 10 10000]]

say handleTestcases(testcases)
