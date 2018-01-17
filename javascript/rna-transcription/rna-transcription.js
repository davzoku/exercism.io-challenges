var DNATranscriber = function () {
}

DNATranscriber.prototype.toRna = function(DNAstrand){
    const PairMap = {
  	'G':'C',
    'C':'G',
    'T':'A',
    'A':'U'
    }
    
    return DNAstrand.split('').map(x => {
        if (PairMap[x]){
            return PairMap[x];
        }
        else {
            throw new Error('Invalid input')
        }
    }).join('')
    
};

module.exports = DNATranscriber;