class leap_year;
rand int year[];

constraint c_year{year.size() == 10 ;
                foreach(year[i])
				{
				   year[i] inside {[2000:2050]};
				   year[i]%4 == 0 && (year[i]%100!=0 || year[i]%400 == 0);
				}
				}




endclass


module tb;

leap_year cls;

initial
 begin
    cls = new();
	
	cls.randomize();
	  cls.year.sort();
	  $display("leap year =%p",cls.year);
	
 
 
 end 



endmodule
