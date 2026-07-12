module status_leds
(
    input link0_up, link1_up,

    output[2:0] qsfp0_leds, qsfp1_leds,
    
    output[1:0] link_status
);

assign qsfp0_leds = {link0_up? 3'b010:3'b100};
assign qsfp1_leds = {link1_up? 3'b010:3'b100};

assign link_status = {link1_up, link0_up};


endmodule
