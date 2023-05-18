module assig2_tb;
reg [1:0]product_required;
reg [3:0]insert_coin;
wire [4:0] amount_to_pay,change,total_amount;
wire payment_complete;
assig2 sa (payment_complete,product_required,total_amount,amount_to_pay,change,insert_coin);

initial begin

product_required=0;
insert_coin=0;
#5

$display ("\n total_amount:%d \n amount_to_pay: %d \n change: %d \n payment_complete: %d",total_amount,amount_to_pay,change,payment_complete);
#20

product_required=2'b00;
insert_coin=5;

$display ("\n total_amount:%d \n amount_to_pay: %d \n change: %d \n payment_complete: %d",total_amount,amount_to_pay,change,payment_complete);
#20


product_required=2'b10;
insert_coin=0;

$display ("\n total_amount:%d \n amount_to_pay: %d \n change: %d \n payment_complete: %d",total_amount,amount_to_pay,change,payment_complete);
#20

product_required=2'b10;
insert_coin=10;
$display ("\n total_amount:%d \n amount_to_pay: %d \n change: %d \n payment_complete: %d",total_amount,amount_to_pay,change,payment_complete);
#20

product_required=2'b10;
insert_coin=10 +5;
$display ("\n total_amount:%d \n amount_to_pay: %d \n change: %d \n payment_complete: %d",total_amount,amount_to_pay,change,payment_complete);
#20
$display ("\n total_amount:%d \n amount_to_pay: %d \n change: %d \n payment_complete: %d",total_amount,amount_to_pay,change,payment_complete);
$finish  ;
end
endmodule





