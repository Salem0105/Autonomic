use "collections"

class LevenshteinDistance
  fun ref apply(str1: String, str2: String): USize =>
    computeLevenshteinDistance(str1, str2)

  fun ref computeLevenshteinDistance(str1: String, str2: String): USize =>
    computeLevenshteinDistance(str1.values(), str2.values())

  fun ref computeLevenshteinDistance(str1: Array[Char], str2: Array[Char]): USize =>
    let distance: Array[Array[USize]] = Array[USize](str1.size() + 1,
                                                      Array[USize](str2.size() + 1, 0))

    for i in 0..str1.size() do
      distance(i)(0) = i

    for j in 0..str2.size() do
      distance(0)(j) = j

    for i in 1..str1.size() do
      for j in 1..str2.size() do
        distance(i)(j) = minimum(distance(i - 1)(j) + 1,
                                 distance(i)(j - 1) + 1,
                                 distance(i - 1)(j - 1) + if str1(i - 1) == str2(j - 1) then 0 else 1 end)

    end

    distance(str1.size())(str2.size())

  fun ref minimum(a: USize, b: USize, c: USize): USize =>
    USize.Min(USize.Min(a, b), c)

actor Main
  new create(env: Env) =>
    let str1: String = "kitten"
    let str2: String = "sitting"

    let distance: USize = LevenshteinDistance(str1, str2)

    env.out.print("Levenshtein Distance between '").print(str1).print("' and '").print(str2).print("': ").println(distance)
