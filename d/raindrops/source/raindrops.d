module raindrops;
import std.string;
import std.conv;

string convert(int input){
	string output;
	if (input % 105 ==0){
		output = "PlingPlangPlong";}
	else if (input % 15 == 0){
		output = "PlingPlang";}
	else if (input % 21 == 0){
		output = "PlingPlong";}
	else if (input % 35 == 0){
		output = "PlangPlong";}
	else if (input % 3 == 0){
		output = "Pling";}
	else if (input % 5 == 0){
		output = "Plang";}
	else if (input % 7 == 0){
		output = "Plong";}
	else{
    	output = to!string(input);}
		
	return output;
}


unittest {
    assert(convert(1) == "1");
    assert(convert(3) == "Pling");
    assert(convert(5) == "Plang");
    assert(convert(7) == "Plong");
    assert(convert(6) == "Pling");
    assert(convert(9) == "Pling");
    assert(convert(10) == "Plang");
    assert(convert(14) == "Plong");
    assert(convert(15) == "PlingPlang");
    assert(convert(21) == "PlingPlong");
    assert(convert(25) == "Plang");
    assert(convert(35) == "PlangPlong");
    assert(convert(49) == "Plong");
    assert(convert(52) == "52");
    assert(convert(105) == "PlingPlangPlong");
}

