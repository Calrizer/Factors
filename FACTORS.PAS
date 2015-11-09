program factors;

uses crt;

var num,current,x,count,test:integer;
input:string;

begin

    clrscr;
    
    TextColor(White);
    writeln('Enter a number to find the factors...');
    writeln;
    
    repeat
        readln(input);
        test := 0;
        num := 0;
        val(input, num, test); {If non integer, test returns '1' to detect invalid input.}
        if test = 1 then
        begin
             writeln;
             writeln('Invalid value! Try again...');
        end;
        writeln;
    until test = 0; {Stops iterating when a string isn't inputted.}
    
    write('Factors of ', num, '... ');
    
    for x := 1 to num do {Iterates from 1 to the inputted number.}
    begin
        if num mod x = 0 then {Returns true when the remaider of num and x is 0.}
        begin
            write(' ', x, ' '); 
            count := count + 1;
        end;
    end;

    writeln;
    writeln;

    if count = 2 then {Returns true when there are two factors.}
    begin
        writeln(num,' is a prime number.');
    end;
    
    readln;
    
end.
