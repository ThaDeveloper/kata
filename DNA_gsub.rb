def DNA_strand(dna)
   dna.gsub(/[ATGC]/, 'A' => 'T', 'T' => 'A','G' => 'C', 'C' => 'G')
end