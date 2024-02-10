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
    parse arg conjunto, k, indiceConjunto, indiceCombinacion, combinacionActual
    if k = 0 then do
      say combinacionActual
    end
    else do
      do i = value(indiceConjunto) to words(conjunto)
        elemento = word(conjunto, i)
        if i > indiceConjunto & elemento = word(conjunto, i-1) then iterate
      
        call generarCombinaciones conjunto, k - 1, i + 1, indiceCombinacion, combinacionActual elemento
      end
    end
    return

asignation:procedure expose subtext
  arg text, n
  if n > words(text) then return ''
  call asignation text, n + 1
  return word(text, n)' 'result