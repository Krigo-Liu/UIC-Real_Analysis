function sol= distance(p,a,b)
     total = [];
     [row,column] = size(a);

     if p == 0
         disp("When p is infinite,distance is: ");
         for i = 1:column
         total(i) = abs(a(i) - b(i));
         end 
         sol = max(total);
         disp(sol);
     else
         disp("When p is "+p+" ,distance is: ");
         temp = 0;
         for i = 1:column
         temp = temp+abs((a(i) - b(i))^p);
         end
         sol = temp^(1/p);
         disp(sol);
     end
end

