entity tb_comparator is
end tb_comparator;
architecture simulation of tb_comparator is
			component comparator
					port(A,B:in bit; Y:out bit);
			end component;
signal signal_a,signal_b,Y:bit;
begin
			signal_a <='0','1' after 20ns,'0' after 40ns;
			signal_b <='0','1' after 10ns,'0' after 20ns,'1' after 30ns,'0' after 40ns;
			
			U0:comparator
			port map(
				A=>signal_a,B=>signal_b,Y=>Y
			);
end;
