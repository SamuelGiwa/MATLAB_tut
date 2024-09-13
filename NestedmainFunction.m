%% Created by Samuel Boluwatife Giwa   
%% 13th of September 2024
%% This code shows the usage of nested function

function NestedmainFunction
    % Main function where the nested function is called

    % Local variables in the main function
    a = 10;
    b = 20;
    
    % Calling the nested function
    result = nestedFunction(a, b);
    
    disp(['Result: ', num2str(result)])
    
    % Nested function
    function output = nestedFunction(x, y)
        % This function can access 'a' and 'b' from mainFunction
        output = x + y + externalHelper();

        % Changing the value of a 
        a = a+b;
    end

    % Another nested function
    function z = externalHelper
        % This function has access to variables from the mainFunction
        z = a * b; % values of a and b are from the mainFunction
    end
    disp(['New value of a is ', num2str(a)]) 
end