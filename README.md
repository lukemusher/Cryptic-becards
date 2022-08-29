#######################################################################
########## Data and scripts for replicating analyses in   #############
########## Musher, Krabbe, & Areta. (2022) "Underestimated#############
########## Neotropical diversity: Integrative taxonomy    #############
########## reveals two unrelated look-alike species in a  #############
########## suboscine bird (Pachyramphus albogriseus)" Ornithology######

#####1. ASTRAL folder 
#contains gene trees (.trees files), population keys (populations.txt), and output trees (_out.tre files)
#This includes both 95% complete (all included loci have sequence for ≥ 95% of samples) and 50% complete datasets (all included loci have sequence for ≥ 50% of samples) 

###2. concatenated_phylogeny folder 
#contains data matrices (.phylip files) for replicating RAxML analyses and results (RAxML_bestTree files for maximum likelihood tree topology search, RAxml_bootstrap files for bootstrap replicates, and RAxML_bipartitions files for best tree with bootstrap values)
#This includes both 95% complete (all included loci have sequence for ≥ 95% of samples) 
#and 50% complete datasets (all included loci have sequence for ≥ 50% of samples) 

#3. phenotype_and_vocal_analysis floder 
#contains data for R scripts for replicating morphological and vocal analyses

#albogriseus_weights.csv: table of specimens for which we obtained weights from specimen tags. 

#specimens_phenotype.csv: table of phenotypic data scored or measured for specimens examined by LJM as well as metadata from specimens' tags.
###culmen.length (bill length) measured with calipers from nares to tip (units in mm)
###culmen.width (bill width) measured with calipers at anterior end of nares (units in mm)
###culmen.depth (bill depth) measured with calipers at anterior end of nares (units in mm)
###tail.length (length of rectices) measured with transparent ruler from base of tail to tip except when molting or damaged feathers seen (units in mm)
###wing.flat (flattened wing chord) measured using wing ruler (units in mm)
###tarsus.length (tibiotarsus length) measured using calipers (units in mm)
###alula.color the color of the center of the alula scored as black or brown 
###alula.margin: measured width with calipers of any pale border on the outer edge of the alula (units in mm)
###lore.color: dominant color of the loral spot scored as either black, dark gray
###lore.black.length: if any black feathers detected in lores, measured the width of the black area in the lores with calipers (units in mm)
### tail.gray.length: measured using calipers as the length of gray in the rectrices of male birds (units in mm)
###no.gray.rectrices: the number of pairs of rectrices containing gray (e.g. 1 means rectrix 1 contains gray on both left and right sides)
###collar.color: scoring the presence of a pale nuchal collar of either pale or uniform, uniform implying that no contrast in the collar is visible
###crown.color: scored color of the crown of males and females
###mantle.color: scored color of the mantle (back of the bird)
###supraloral.color: scored color of the supraloral stripe (area above the lores)
###post.ocular.color: scored color of the post-ocular supercillium/eyeline
###widest.median.tip: the width, measured in mm of the largest pale edge of median coverts (units in mm)
###widest.greater.tip: the width, measured in mm of the largest pale edge of greater coverts (units in mm)
###wing.bar.ratio: the ratio of widest.median.tip to widest.greater.tip
###throat.color: scored color of the throat
###breast: scored color of the breast
###belly: scored color of the belly (lower ventral area)
###undertail.covs: scored color the undertail coverts

#vocalizations.NK.csv: list of recordings used and measurements taken for vocalization analyses (details of measurements can be found in the published article)
###Catalogue.no (catalogue number)
###phrase.duration = phrase duration
###penultimate.note.duration = duration of the penultimate note/syllable
###last.note.duration = duration of the final note/syllable
###duration.rising.portion = duration of the ascending portion of the phrase
###max.freq.falling.portion = the maximum frequency of the falling portion of the phrase
###min.freq.falling.portion = the minimum frequency of the falling portion of the phrase
###freq.interval.falling.portion.last.note = the frequency interval of the falling portion of the final note of the phrase
###min.freq.last.note = the minimum frequency of the final note of the phrase
###max.freq.last.note = the maximum frequency of the final note of the phrase
###freq.interval.last.note = the frequency interval of the final note of the phrase
###freq.ratio.last.note = the ratio of minimum to maximum frequency of the final note of the phrase

#Missing values in tables indicate data not listed on tag/not known or morphological feature not measurable.

#4. mafft-nexus-edge-trimmed-clean folder
#contains all recovered UCE alignmentss (which can be filtered to obtain the 95% and 50% complete datasets we used)

#5. Pachyramphus albogriseus.kml file:
#The kml file contains localities and metadata for all occurrences of P. salvini, P. a. albogriseus, and P. a. ornatus.
#####Yellow: P. salvini.
#####Blue: P. albogriseus.
#####White: either.
#####Stars: sequenced specimens.
#####Pins: unsequenced specimens.
#####Squares: photographs.
#####Inverse drops: sound recordings


Key to museum codes in datasets:
#ANSP = THE ACADEMY OF NATURAL SCIENCES OF PHILADELPHIA (DREXEL UNIVERSITY)
#LSUMZ = THE LOUISIANA STATE MUSEUM OF ZOOLOGY
#EBRG = Museo Estación Biológica Rancho Grande
#AMNH = THE AMERICAN MUSEUM OF NATURAL HISTORY
#WFVZ = Western Foundation of Vertebrate Zoology
#MECN = Museo Ecuatoriano de Ciencias Naturales
#MCZ = THE MUSEUM OF COMPARATIVE ZOOLOGY
#ML = THE MACAULAY LIBRARY
#XC = XENOCANTO.ORG

