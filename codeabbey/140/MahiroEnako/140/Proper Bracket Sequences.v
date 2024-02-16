module BracketSequences #(parameter N = 10);
  
  function automatic logic [127:0] factorial;
    input [63:0] num;
    factorial = 1;
    for (int i = 2; i <= num; i++) begin
      factorial *= i;
    end
  endfunction

  function automatic logic [127:0] count_bracket_sequences;
    input [63:0] n;
    logic [127:0] numerator, denominator;
    
    numerator = factorial(2 * n);
    denominator = factorial(n + 1) * factorial(n);

    count_bracket_sequences = numerator / denominator;
  endfunction

  initial begin
    // Example with N = 10
    logic [127:0] result = count_bracket_sequences(N);
    $display("%0d", result);
  end

endmodule
