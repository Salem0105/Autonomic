main:
  permutation()

permutation:
  pull text
  k = word(text, 1)
  subtext = asignation(text, 3)
  call try k, subtext
  exit

try:
  arg k conjunto
  call generarCombinaciones conjunto, k, 1, 1, ""

  generarCombinaciones: procedure
    arg conjunto, k, indiceConjunto, indiceCombinacion, combinacionActual
    if k = 0 then do
      say combinacionActual
    end
    else do
      do i = indiceConjunto to words(conjunto)
        elemento = word(conjunto, i)
        if i > indiceConjunto & i > 1 then
          if elemento == word(conjunto, i-1) then iterate
        combinacionActual = combinacionActual || elemento
        call generarCombinaciones conjunto, k - 1, i + 1, indiceCombinacion, combinacionActual
      end
    end
    return

asignation:procedure expose subtext
  arg text, n
  if n > words(text) then return ''
  call asignation text, n + 1
  return word(text, n)' 'result