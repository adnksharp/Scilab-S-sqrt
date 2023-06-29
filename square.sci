error = 0.01 / 100;

function [out] = sqn(x)
	out = 0;
	if x > 0 then
		while 1 do
			if abs(out*out - x) < error then
				break;
			end
			if (out == 0) then
				out = (out + x/x/2) / 2;
			else
				out = (out + x/out) / 2;
			end
		end
	end
endfunction
