module rna_transcription;
import std.string;
import std.regex;

string dnaComplement(string dna){
	dchar[dchar] transTable = [
	'C' : 'G',
	'G' : 'C',
	'T' : 'A',
	'A' : 'U'
	];
	
	if( matchFirst(dna, "[^CGTA]") )
		throw new Exception("Invalid Nucleotide Input");
	
	return translate(dna, transTable);
}

unittest {
import std.exception : assertThrown;


    assert(dnaComplement("C") == "G");
    assert(dnaComplement("G") == "C");
    assert(dnaComplement("T") == "A");
    assert(dnaComplement("A") == "U");

    assert(dnaComplement("ACGTGGTCTTAA") == "UGCACCAGAAUU");

    assertThrown(dnaComplement("U"));
    assertThrown(dnaComplement("XXX"));
    assertThrown(dnaComplement("ACGTXXXCTTAA"));
}
