program factors;

uses crt;

var num,current,x,count,test:integer;
input:string;

begin

    clrscr;
    
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
    
    for x := 1 to num do
    begin
        if num mod x = 0 then 
        begin
            write(' ', x, ' ');
            count := count + 1;
        end;
    end;

    writeln;
    writeln;

    if count = 2 then
    begin
        writeln(num,' is a prime number.');
    end;
    
    readln;
    
end.