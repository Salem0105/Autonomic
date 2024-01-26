/*regina -c salem0105.rx*/

main:
  hexadecimal()

hexadecimal:
  pull text
  amount = length(text)
  bin01 = conver_bin(1)
  div = separate(1, bin01)
  add_zero = zeros(div)
  code_hexa = conver_hexa(1, add_zero)
  say code_hexa
  exit

conver_hexa:procedure
  arg count, chain
  each_bin = words(chain)
  hex_bin = ''
  if count > each_bin then return ''
  bit8 = word(chain, count)
  b1 = substr(bit8, 1, 4)
  b2 = substr(bit8, 5, 4)
  n1 = substr(b1, 1, 1) * 8 + substr(b1, 2, 1) * 4,
   + substr(b1, 3, 1) * 2 + substr(b1, 4, 1)
  n2 = substr(b2, 1, 1) * 8 + substr(b2, 2, 1) * 4,
   + substr(b2, 3, 1) * 2 + substr(b2, 4, 1)
  hex_bin = sub_hexa(n1) || sub_hexa(n2)
  call conver_hexa count + 1, chain
  return hex_bin'' result

sub_hexa:
  arg num
  if num <= 9 then 
    return num
  else
    do
      select
        when num == 10 then return 'A'
        when num == 11 then return 'B'
        when num == 12 then return 'C'
        when num == 13 then return 'D'
        when num == 14 then return 'E'
        when num == 15 then return 'F'
        otherwise nop
      end
    end

zeros:
  arg divided
  counter = words(divided)
  how_much = 8 - length(word(divided, words(divided)))
  that = length(divided) - how_much
  newDiv = ''
  let = ''
  if length(word(divided, counter)) == 8 then
    return divided
  else
    do
      select
        when how_much == 1 then let = word(divided, words(divided))'0'
        when how_much == 2 then let = word(divided, words(divided))'00'
        when how_much == 3 then let = word(divided, words(divided))'000'
        when how_much == 4 then let = word(divided, words(divided))'0000'
        when how_much == 5 then let = word(divided, words(divided))'00000'
        when how_much == 6 then let = word(divided, words(divided))'000000'
        when how_much == 7 then let = word(divided, words(divided))'0000000'
        otherwise nop
      end
      newDiv = substr(divided, 1, length(divided) - 10)' 'let
      return newDiv
    end

separate: procedure
  arg bits,  matrix
  items = length(matrix)
  if bits > items then return ''
  apart = substr(matrix, bits, 8)
  call separate bits + 8, matrix
  return apart'' result

conver_bin: procedure expose amount text
  arg count
  if count > amount then return ''
  letter = substr(text, count, 1)
  bin = key_value_bin(letter)
  call conver_bin count + 1
  return bin''result

key_value_bin:
  arg key
  if key == ' ' then return '11'
  binary.a = '011'; binary.b = '0000010'
  binary.c = '000101'; binary.d = '00101'
  binary.e = '101'; binary.f = '000100'
  binary.g = '0000100'; binary.h = '0011'
  binary.i = '01001'; binary.j = '000000001'
  binary.k = '0000000001'; binary.l = '001001'
  binary.m = '000011'; binary.n = '10000'
  binary.o = '10001'; binary.p = '0000101'
  binary.q = '000000000001'; binary.r = '01000'
  binary.s = '0101'; binary.t = '1001'
  binary.u = '00011'; binary.v = '00000001'
  binary.w = '0000011'; binary.x = '00000000001'
  binary.y = '0000001'; binary.z = '000000000000'
  binary.! = '001000'
  return binary.key