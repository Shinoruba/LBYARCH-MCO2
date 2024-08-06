# LBYARCH S14 || RISC-V MP2
# Yazan Homssi & Aebrahm Ramos


.data
    # Debug Statements
    msg_attacker_defender: .ascii "Attacker and Defender numbers: \0" 
    msg_attacker_types: .ascii "Attacker types: \0"
    msg_defender_types: .ascii "Defender types: \0"
    msg_effectiveness_type1: .ascii "Effectiveness of Attacker's Type1 against Defender's Type1: \0"
    msg_effectiveness_type1_defender2: .ascii "Effectiveness of Attacker's Type1 against Defender's Type2: \0"
    msg_effectiveness_combined: .ascii "Combined effectiveness: \0"
    msg_effectiveness_type2: .ascii "Effectiveness of Attacker's Type2 against Defender's Type1: \0"
    msg_effectiveness_type2_defender2: .ascii "Effectiveness of Attacker's Type2 against Defender's Type2: \0"
    msg_final_effectiveness: .ascii "Pokemon final/averaged score: \0"
    
# pokemon_type: Information for the first 100 Pokemon | Format: {type2, type1} for each Pokemon (0 if no first type).
pokemon_types: .word 
		4, 12,    	# Bulbasaur: Poison, Grass	CHECK 1
                4, 12,    	# Ivysaur: Poison, Grass	CHECK 2
                4, 12,    	# Venusaur: Poison, Grass	CHECK 3
                0, 10,    	# Charmander: None, Fire	CHECK 4
                0, 10,    	# Charmeleon: None, Fire	CHECK 5
                3, 10,    	# Charizard: Flying, Fire	CHECK 6
                0, 11,    	# Squirtle: None, Water		CHECK 7
                0, 11,    	# Wartortle: None, Water	CHECK 8
                0, 11,    	# Blastoise: None, Water	CHECK 9
                0, 7,    	# Caterpie: None, Bug		CHECK 10
                0, 7,    	# Metapod: None, Bug		CHECK 11
                3, 7,    	# Butterfree: Flying, Bug	CHECK 12
                4, 7,    	# Weedle: Poison, Bug		CHECK 13
                4, 7,    	# Kakuna: Poison, Bug		CHECK 14
                4, 7,    	# Beedrill: Poison, Bug		CHECK 15
                3, 1,    	# Pidgey: Flying, Normal	CHECK 16
                3, 1,    	# Pidgeotto: Flying, Normal	CHECK 17
                3, 1,    	# Pidgeot: Flying, Normal	CHECK 18
                0, 1,    	# Rattata: None, Normal		CHECK 19
                0, 1,    	# Raticate: None, Normal	CHECK 20
                3, 1,    	# Spearow: Flying, Normal	CHECK 21
                3, 1,    	# Fearow: Flying, Normal	CHECK 22
                0, 4,    	# Ekans: None, Poison		CHECK 23
                0, 4,    	# Arbok: None, Poison		CHECK 24
                0, 13,   	# Pikachu: None, Electric	CHECK 25
                0, 13,   	# Raichu: None, Electric	CHECK 26
                0, 5,    	# Sandshrew: None, Ground	CHECK 27
                0, 5,    	# Sandslash: None, Ground	CHECK 28
                0, 4,    	# Nidoran: None, Poison		CHECK 29
                0, 4,    	# Nidorina: None, Poison	CHECK 30
                5, 4,    	# Nidoqueen: Ground, Poison	CHECK 31
                0, 4,    	# Nidoran: None, Poison		CHECK 32	Duplicate from PokemonIndex_29 ???
                0, 4,    	# Nidorino: None, Poison	CHECK 33
                5, 4,    	# Nidoking: Ground, Poison	CHECK 34
                0, 1,    	# Clefairy: None, Normal	CHECK 35
                0, 1,    	# Clefable: None, Normal	CHECK 36
                0, 10,   	# Vulpix: None, Fire		CHECK 37
                0, 10,   	# Ninetales: None, Fire		CHECK 38
                0, 1,    	# Jigglypuff: None, Normal	CHECK 39
                0, 1,    	# Wigglytuff: None, Normal	CHECK 40
                3, 4,    	# Zubat: Flying, Poison		CHECK 41
                3, 4,    	# Golbat: Flying, Poison	CHECK 42
                4, 12,   	# Oddish: Poison, Grass		CHECk 43
                4, 12,   	# Gloom: Poison, Grass		CHECK 44
                4, 12,   	# Vileplume: Poison, Grass	CHECK 45
                12, 7,   	# Paras: Grass, Bug		CHECK 46
                12, 7,   	# Parasect: Grass, Bug		CHECK 47
                4, 7,    	# Venonat: Poison, Bug		CHECK 48
                4, 7,    	# Venomoth: Poison, Bug		CHECK 49
                0, 5,    	# Diglett: None, Ground		CHECK 50
                0, 5,    	# Dugtrio: None, Ground		CHECK 51
                0, 1,    	# Meowth: None, Normal		CHECK 52
                0, 1,    	# Persian: None, Normal		CHECK 53
                0, 11,   	# Psyduck: None, Water		CHECK 54
                0, 11,   	# Golduck: None, Water		CHECK 55
                0, 2,    	# Mankey: None, Fighting	CHECK 56
                0, 2,    	# Primeape: None, Fighting	CHECK 57
                0, 10,   	# Growlithe: None, Fire		CHECK 58
                0, 10,   	# Arcanine: None, Fire		CHECK 59
                0, 11,   	# Poliwag: None, Water		CHECK 60
                0, 11,   	# Poliwhirl: None, Water	CHECK 61
                2, 11,   	# Poliwrath: Fighting, Water	CHECK 62
                0, 14,   	# Abra: None, Psychic		CHECK 63
                0, 14,   	# Kadabra: None, Psychic	CHECK 64
                0, 14,   	# Alakazam: None, Psychic	CHECK 65
                0, 2,    	# Machop: None, Fighting	CHECK 66
                0, 2,    	# Machoke: None, Fighting	CHECK 67
                0, 2,    	# Machamp: None, Fighting	CHECK 68
                4, 12,   	# Bellsprout: Poison, Grass	CHECK 69
                4, 12,   	# Weepinbell: Poison, Grass	CHECK 70
                4, 12,   	# Victreebel: Poison, Grass	CHECK 71
                4, 11,   	# Tentacool: Poison, Water	CHECK 72
                4, 11,   	# Tentacruel: Poison, Water	CHECK 73
                5, 6,    	# Geodude: Ground, Rock		CHECK 74
                5, 6,    	# Graveler: Ground, Rock	CHECK 75
                5, 6,    	# Golem: Ground, Rock		CHECK 76
                0, 10,   	# Ponyta: None, Fire		CHECK 77
                0, 10,   	# Rapidash: None, Fire		CHECK 78
                14, 11,  	# Slowpoke: Psychic, Water	CHECK 79
                14, 11,  	# Slowbro: Psychic, Water	CHECK 80
                0, 13,   	# Magnemite: None, Electric	CHECK 81
                0, 13,   	# Magneton: None, Electric	CHECK 82
                3, 1,    	# Farfetch'd: Flying, Normal	CHECK 83
                3, 1,    	# Doduo: Flying, Normal		CHECK 84
                3, 1,    	# Dodrio: Flying, Normal	CHECK 85
                0, 11,   	# Seel: None, Water		CHECK 86
                15, 11,  	# Dewgong: Ice, Water		CHECK 87
                0, 4,    	# Grimer: None, Poison		CHECK 88
                0, 4,    	# Muk: None, Poison		CHECK 89
                0, 11,   	# Shellder: None, Water		CHECK 90
                15, 11,  	# Cloyster: Ice, Water		CHECK 91
                4, 8,    	# Gastly: Poison, Ghost		CHECK 92
                4, 8,    	# Haunter: Poison, Ghost	CHECK 93
                4, 8,    	# Gengar: Poison, Ghost		CHECK 94
                5, 6,    	# Onix: Ground, Rock		CHECK 95
                0, 14,   	# Drowzee: None, Psychic	CHECK 96
                0, 14,   	# Hypno: None, Psychic		CHECK 97
                0, 11,   	# Krabby: None, Water		CHECK 98
                0, 11,   	# Kingler: None, Water		CHECK 99
                0, 13    	# Voltorb: None, Electric	CHECK 100
           
# Effectiveness table (18x18 float values) | Ranging from 0.0 , 0.5 , 1.0 , 2.0                  
effectiveness: .float 	1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 0.0, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, # Normal
                      	2.0, 1.0, 0.5, 0.5, 1.0, 2.0, 0.5, 0.0, 2.0, 1.0, 1.0, 1.0, 1.0, 0.5, 2.0, 1.0, 2.0, 0.5, # Fighting
                      	1.0, 2.0, 1.0, 1.0, 1.0, 0.5, 2.0, 1.0, 0.5, 1.0, 1.0, 2.0, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, # Flying
                      	1.0, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, 0.5, 0.0, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, # Poison
                      	1.0, 1.0, 0.0, 2.0, 1.0, 2.0, 0.5, 1.0, 2.0, 2.0, 1.0, 0.5, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, # Ground
                      	1.0, 0.5, 2.0, 1.0, 0.5, 1.0, 2.0, 1.0, 0.5, 2.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, # Rock
                      	1.0, 0.5, 0.5, 0.5, 1.0, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, 2.0, 1.0, 2.0, 1.0, 1.0, 2.0, 0.5, # Bug
                      	0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 0.5, 1.0, # Ghost
                      	1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 2.0, 1.0, 1.0, 2.0, # Steel
                      	1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 2.0, 1.0, 2.0, 0.5, 0.5, 2.0, 1.0, 1.0, 2.0, 0.5, 1.0, 1.0, # Fire
                      	1.0, 1.0, 1.0, 1.0, 2.0, 2.0, 1.0, 1.0, 1.0, 2.0, 0.5, 0.5, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, # Water
                      	1.0, 1.0, 0.5, 0.5, 2.0, 2.0, 0.5, 1.0, 0.5, 0.5, 2.0, 0.5, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, # Grass
                      	1.0, 1.0, 2.0, 1.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 0.5, 0.5, 1.0, 1.0, 0.5, 1.0, 1.0, # Electric
                      	1.0, 2.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 0.0, 1.0, # Psychic
                      	1.0, 1.0, 2.0, 1.0, 2.0, 1.0, 1.0, 1.0, 0.5, 0.5, 0.5, 2.0, 1.0, 1.0, 0.5, 2.0, 1.0, 1.0, # Ice
                      	1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 0.0, # Dragon
                      	1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 0.5, 0.5, # Dark
                      	1.0, 2.0, 1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 2.0, 1.0  # Fairy
#effectiveness: .float 
#			1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0,
#	           	19.0, 20.0, 21.0, 22.0, 23.0, 24.0, 25.0, 26.0, 27.0, 28.0, 29.0, 30.0, 31.0, 32.0, 33.0, 34.0, 35.0, 36.0,
#	           	37.0, 38.0, 39.0, 40.0, 41.0, 42.0, 43.0, 44.0, 45.0, 46.0, 47.0, 48.0, 49.0, 50.0, 51.0, 52.0, 53.0, 54.0,
#	           	55.0, 56.0, 57.0, 58.0, 59.0, 60.0, 61.0, 62.0, 63.0, 64.0, 65.0, 66.0, 67.0, 68.0, 69.0, 70.0, 71.0, 72.0,
#	           	73.0, 74.0, 75.0, 76.0, 77.0, 78.0, 79.0, 80.0, 81.0, 82.0, 83.0, 84.0, 85.0, 86.0, 87.0, 88.0, 89.0, 90.0,
#	           	91.0, 92.0, 93.0, 94.0, 95.0, 96.0, 97.0, 98.0, 99.0, 100.0, 101.0, 102.0, 103.0, 104.0, 105.0, 106.0, 107.0, 108.0,
#	           	109.0, 110.0, 111.0, 112.0, 113.0, 114.0, 115.0, 116.0, 117.0, 118.0, 119.0, 120.0, 121.0, 122.0, 123.0, 124.0, 125.0, 126.0, 
#	           	127.0, 128.0, 129.0, 130.0, 131.0, 132.0, 133.0, 134.0, 135.0, 136.0, 137.0, 138.0, 139.0, 140.0, 141.0, 142.0, 143.0, 144.0, 
#	           	145.0, 146.0, 147.0, 148.0, 149.0, 150.0, 151.0, 152.0, 153.0, 154.0, 155.0, 156.0, 157.0, 158.0, 159.0, 160.0, 161.0, 162.0, 
#	           	163.0, 164.0, 165.0, 166.0, 167.0, 168.0, 169.0, 170.0, 171.0, 172.0, 173.0, 174.0, 175.0, 176.0, 177.0, 178.0, 179.0, 180.0, 
#	           	181.0, 182.0, 183.0, 184.0, 185.0, 186.0, 187.0, 188.0, 189.0, 190.0, 191.0, 192.0, 193.0, 194.0, 195.0, 196.0, 197.0, 198.0, 
#	           	199.0, 200.0, 201.0, 202.0, 203.0, 204.0, 205.0, 206.0, 207.0, 208.0, 209.0, 210.0, 211.0, 212.0, 213.0, 214.0, 215.0, 216.0, 
#	           	217.0, 218.0, 219.0, 220.0, 221.0, 222.0, 223.0, 224.0, 225.0, 226.0, 227.0, 228.0, 229.0, 230.0, 231.0, 232.0, 233.0, 234.0, 
#	           	235.0, 236.0, 237.0, 238.0, 239.0, 240.0, 241.0, 242.0, 243.0, 244.0, 245.0, 246.0, 247.0, 248.0, 249.0, 250.0, 251.0, 252.0,
#	           	253.0, 254.0, 255.0, 256.0, 257.0, 258.0, 259.0, 260.0, 261.0, 262.0, 263.0, 264.0, 265.0, 266.0, 267.0, 268.0, 269.0, 270.0, 
#	           	271.0, 272.0, 273.0, 274.0, 275.0, 276.0, 277.0, 278.0, 279.0, 280.0, 281.0, 282.0, 283.0, 284.0, 285.0, 286.0, 287.0, 288.0, 
#	           	289.0, 290.0, 291.0, 292.0, 293.0, 294.0, 295.0, 296.0, 297.0, 298.0, 299.0, 300.0, 301.0, 302.0, 303.0, 304.0, 305.0, 306.0,
#	           	307.0, 308.0, 309.0, 310.0, 311.0, 312.0, 313.0, 314.0, 315.0, 316.0, 317.0, 318.0, 319.0, 320.0, 321.0, 322.0, 323.0, 324.0           
# ==============================================================================================================================
	# a0 - Argument/Return value register, used for function arguments and return values.
	# a1 - Argument register, used for function arguments.
	# a7 - System call number, used to specify the type of ecall.
	# t0 - Temporary register, used for intermediate calculations and comparisons.
	# t1 - Temporary register, used for intermediate calculations and indexing.
	# t2 - Temporary register, used for storing Pokemon types.
	# t3 - Temporary register, used for storing Pokemon types and indexing.
	# t4 - Temporary register, used for storing Pokemon types.
	# t5 - Temporary register, used for storing constants like the number of Pokemon types.
	# t6 - Temporary register, used for calculating offsets and indices.
	# s0 - Saved register, used for storing Pokemon numbers (persistent across function calls).
	# s1 - Saved register, used for storing Pokemon numbers (persistent across function calls).
	# sp - Stack pointer, used for stack management.
	# ra - Return address, used to store the return address for function calls.
	# fs0 - Floating-point register, used for storing effectiveness calculations.
	# fs1 - Floating-point register, used for storing effectiveness calculations.
	# fs2 - Floating-point register, used for storing effectiveness calculations.
	# fs3 - Floating-point register, used for storing effectiveness calculations.
	# fs4 - Floating-point register, used for storing effectiveness calculations.
	# fs5 - Floating-point register, used for storing effectiveness calculations.
	# fs6 - Floating-point register, used for storing effectiveness calculations.
	# fa0 - Floating-point argument/return value register, used for floating-point arguments and return values.
	# ft0 - Temporary floating-point register, used for intermediate floating-point calculations.
	
.text
.globl main
main:
    	# Read input Pokemon numbers
    	li a7, 5
    	ecall
    	mv s0, a0  # s0 = Pokemon 1 number
    	ecall
    	mv s1, a0  # s1 = Pokemon 2 number

    	# Calculate effectiveness scores
    	mv a0, s0
    	mv a1, s1
    	jal ra, calculate_winner

    	# Print result
    	mv a0, a0
    	li a7, 1
    	ecall

    	# Exit Program :)
    	li a7, 10
	ecall

calculate_winner:
	    addi sp, sp, -24	# Decrease the stack pointer by 24 bytes to make space for storing return address, saved registers, and floating-point registers.
	    sw ra, 0(sp)	# Store the return address (ra) at the top of the stack.
	    sw s0, 4(sp)	# Store register s0 on the stack.
	    sw s1, 8(sp)	# Store register s1 on the stack.
	    fsw fs0, 12(sp)	# Store floating-point register fs0 on the stack.
	    fsw fs1, 16(sp)	# Store floating-point register fs1 on the stack.
	    fsw fs2, 20(sp)	# Store floating-point register fs2 on the stack.
	    mv s0, a0		# a0 = Pokemon 1 number
	    mv s1, a1		# a1 = Pokemon 2 number
	
	    # Calculate effectiveness for: Pokemon 1 vs. Pokemon 2
	    mv a0, s0			# Move Pokemon 1�s number to a0 (argument register for function calls).
	    mv a1, s1			# Move Pokemon 2�s number to a1.
	    jal ra, get_effectiveness	# Jump and link to get_effectiveness function, which calculates the effectiveness of Pokemon 1�s types against Pokemon 2�s types. The result is returned in fa0.
	    fmv.s fs0, fa0  		# Move the result (effectiveness) from fa0 to floating-point register fs0.
	
	    # Calculate effectiveness for Pokemon 2 vs. Pokemon 1
	    mv a0, s1			# Move Pokemon 2�s number to a0.
	    mv a1, s0			# Move Pokemon 1�s number to a1.
	    jal ra, get_effectiveness	# Calculate the effectiveness of Pokemon 2�s types against Pokemon 1�s types.
	    fmv.s fs1, fa0  		# Store the result in fs1.
	
		# Compare effectiveness scores
		flt.s t0, fs0, fs1	# Compare fs0 and fs1. If fs0 < fs1, t0 is set to 1; otherwise, it�s 0.
		beqz t0, pokemon1_wins	# If t0 is zero (fs0 >= fs1), branch to pokemon1_wins.
		mv a0, s1               # If fs0 < fs1, set a0 to s1, indicating Pokemon 2 wins.
		j end_calculate_winner  # Jump to the end of the function.
		
pokemon1_wins:
		flt.s t0, fs1, fs0        # Compare fs1 and fs0 again to check if they are equal.
		beqz t0, tie              # If t0 is zero (fs1 >= fs0), it means fs0 == fs1 (a tie).
		mv a0, s0                 # If fs1 < fs0, set a0 to s0, indicating Pokemon 1 wins.
		j end_calculate_winner    # Jump to end
		
		tie:
		li a0, -1                 # Return -1 if tie, dats wat specs say
	
end_calculate_winner:
	    lw ra, 0(sp)	# Restore floating-point register fs2.
	    lw s0, 4(sp)	# Restore floating-point register fs1.
	    lw s1, 8(sp)	# Restore floating-point register fs0.
	    flw fs0, 12(sp)	# Restore register s1.
	    flw fs1, 16(sp)	# Restore register s0.
	    flw fs2, 20(sp)	# Restore the return address.
	    addi sp, sp, 24	# Restore the stack pointer.
	    ret

# =============================================================================================================================================
get_effectiveness:
	# a0 = attacker Pokemon number,
	# a1 = defender Pokemon number
	addi sp, sp, -40	# Reserve space on the stack for storing return address, saved registers, and floating-point registers.
	sw ra, 0(sp)		# Save the return address.
	sw a0, 4(sp)		# Save the input arguments a0 , which are the Pokemon numbers for the attacker.
	sw a1, 8(sp)		# Save the input argument a1, which are the Pokemon numbers for the defender.
	fsw fs0, 12(sp)		# Save floating-point registers.
	fsw fs1, 16(sp)		# Save floating-point registers.
	fsw fs2, 20(sp)		# Save floating-point registers.
	fsw fs3, 24(sp)		# Save floating-point registers.
	fsw fs4, 28(sp)		# Save floating-point registers.
	fsw fs5, 32(sp)		# Save floating-point registers.
	fsw fs6, 36(sp)		# Save floating-point registers, finally..
	
	    # Debug print: Attacker and Defender numbers
	    la a0, msg_attacker_defender
	    li a7, 4				
	    ecall
	    lw a0, 4(sp)	
	    li a7, 1
	    ecall
	    li a0, 32  	
	    li a7, 11
	    ecall
	    lw a0, 8(sp)		
	    li a7, 1
	    ecall
	    li a0, 10  		
	    li a7, 11
	    ecall
	
	# Load types for attacker Pokemon
	lw a0, 4(sp)		# Load the attacker�s Pokemon number.
	addi a0, a0, -1  	# Adjust for 0-based indexing (Pokemon number starts from 1 in the data).
	la t0, pokemon_types	# Load the base address of the pokemon_types array.
	slli t1, a0, 3 		# Multiply a0 by 8 to get the byte offset (each Pokemon has 8 bytes for two types). || 2^3
	add t0, t0, t1		# Add the offset to the base address to point to the correct Pokemon's type data.
	lw t1, 0(t0)  		# load the first type of the attacker.
	lw t2, 4(t0)  		# Load the second type of the attacker (or 0 if there is no second type).
	
	    # Debug print: Attacker types
	    la a0, msg_attacker_types
	    li a7, 4
	    ecall
	    mv a0, t1	
	    li a7, 1
	    ecall
	    li a0, 32  		
	    li a7, 11		
	    ecall
	    mv a0, t2		
	    li a7, 1
	    ecall
	    li a0, 10  		
	    li a7, 11		
	    ecall
	
	# Load types for defender Pokemon
	lw a0, 8(sp)		# Load the defender�s Pokemon number.
	addi a0, a0, -1  	# Adjust for 0-based indexing.
	la t0, pokemon_types	# Load the base address of the pokemon_types array.
	slli t3, a0, 3  	# Multiply a0 by 8 to get the byte offset.
	add t0, t0, t3		# Add the offset to the base address to point to the correct data.
	lw t3, 0(t0)  		# Load the first type of the defender.
	lw t4, 4(t0)  		# Load the second type of the defender (or 0 if there is no second type).
	
	    # Debug print: Defender types
	    la a0, msg_defender_types
	    li a7, 4
	    ecall
	    mv a0, t3
	    li a7, 1
	    ecall
	    li a0, 32  	
	    li a7, 11				
	    ecall
	    mv a0, t4
	    li a7, 1
	    ecall
	    li a0, 10  				
	    li a7, 11			
	    ecall

# ==========================================================
# Check if Attack Type 1 is zero
beqz t1, check_attack_type2			
    # Calculate effectiveness for attacker's Type1 against defender's Type1
    la t0, effectiveness
    li t5, 18
    	li s11, 19		# VERY IMPORTANT !!!
    mul t6, t1, t5       # t6 = attacker's Type1 * 18
    	sub t6, t6, s11		# GENIUS RAHHHHHHHHHHH
    add t6, t6, t3       # t6 = (attacker's Type1 * 18) + defender's Type1
    slli t6, t6, 2       # Multiply by 4 (size of float)
    add t0, t0, t6
    flw fs0, 0(t0)

    # Debug print: Effectiveness of Type1 vs Type1
    la a0, msg_effectiveness_type1
    li a7, 4
    ecall
    fmv.s fa0, fs0
    li a7, 2
    ecall
    li a0, 10
    li a7, 11
    ecall
    
    # Calculate effectiveness for attacker's Type1 against defender's Type2
    la t0, effectiveness
    mul t6, t1, t5       # t6 = attacker's Type1 * 18
    	sub t6, t6, s11
    add t6, t6, t4       # t6 = (attacker's Type1 * 18) + defender's Type2
    slli t6, t6, 2       # Multiply by 4 (size of float)
    add t0, t0, t6
    flw ft0, 0(t0)
    
    # Debug print: Effectiveness of Type1 vs Type2
    la a0, msg_effectiveness_type1_defender2
    li a7, 4
    ecall
    fmv.s fa0, ft0
    li a7, 2
    ecall
    li a0, 10
    li a7, 11
    ecall

    # Multiply effectiveness values for Type1
    fmul.s fs0, fs0, ft0

    # Debug print: Combined effectiveness for Type1
    la a0, msg_effectiveness_combined
    li a7, 4
    ecall
    fmv.s fa0, fs0
    li a7, 2
    ecall
    li a0, 10
    li a7, 11
    ecall



check_attack_type2:
    # Calculate effectiveness for attacker's Type2 against defender's Type1
    la t0, effectiveness
    mul t6, t2, t5       # t6 = attacker's Type2 * 18
    sub t6, t6, s11
    add t6, t6, t3       # t6 = (attacker's Type2 * 18) + defender's Type1
    slli t6, t6, 2       # Multiply by 4 (size of float)
    add t0, t0, t6
    flw fs1, 0(t0)

    # Debug print: Effectiveness of Type2 vs Type1
    la a0, msg_effectiveness_type2
    li a7, 4
    ecall
    fmv.s fa0, fs1
    li a7, 2
    ecall
    li a0, 10
    li a7, 11
    ecall

    # Calculate effectiveness for attacker's Type2 against defender's Type2
    la t0, effectiveness
    mul t6, t2, t5       # t6 = attacker's Type2 * 18
    sub t6, t6, s11
    add t6, t6, t4       # t6 = (attacker's Type2 * 18) + defender's Type2
    slli t6, t6, 2       # Multiply by 4 (size of float)
    add t0, t0, t6
    flw ft0, 0(t0)
    
    # Debug print: Effectiveness of Type2 vs Type2
    la a0, msg_effectiveness_type2_defender2
    li a7, 4
    ecall
    fmv.s fa0, ft0
    li a7, 2
    ecall
    li a0, 10
    li a7, 11
    ecall

    # Multiply effectiveness values for Type2
    fmul.s fs1, fs1, ft0
    j print_combined_effectiveness

print_combined_effectiveness:
    # Debug print: Combined effectiveness for Type2
    la a0, msg_effectiveness_combined
    li a7, 4
    ecall
    fmv.s fa0, fs1
    li a7, 2
    ecall
    li a0, 10
    li a7, 11
    ecall

average_effectiveness:
    # Check if both types are non-zero
    bnez t1, both_types_nonzero
    bnez t2, single_type_nonzero
    # Both types are zero, just use 1.0
    li t0, 1
    fcvt.s.w fs0, t0
    j final_effectiveness

both_types_nonzero:
    bnez t2, average_two_types
    # Only t1 is non-zero, just use fs0
    j final_effectiveness

single_type_nonzero:
    # Only t2 is non-zero, use fs1
    fmv.s fs0, fs1
    j final_effectiveness

average_two_types:
    # Average the effectiveness of both types
    fadd.s fs2, fs0, fs1
    li t0, 2
    fcvt.s.w fs3, t0
    fdiv.s fs0, fs2, fs3

final_effectiveness:
    # Debug print: Final effectiveness
    la a0, msg_final_effectiveness
    li a7, 4
    ecall
    fmv.s fa0, fs0
    li a7, 2
    ecall
    li a0, 10
    li a7, 11
    ecall
	
	fmv.s fa0, fs0		# Move the value from fs0 to fa0, preparing it as the return value of the function.
	lw ra, 0(sp)		# Restore the return address from the stack.
	lw a0, 4(sp)		# Restore the a0 register (saved earlier for debugging).
	lw a1, 8(sp)		# Restore the a1 register.
	flw fs0, 12(sp)		# Restore the floating-point register fs0 from the stack.
	flw fs1, 16(sp)		# Restore the floating-point register(s).
	flw fs2, 20(sp)		
	flw fs3, 24(sp)		
	flw fs4, 28(sp)		
	flw fs5, 32(sp)		
	flw fs6, 36(sp)		
	addi sp, sp, 40		# Deallocate 40 bytes from the stack, cleaning up the space used for storing temporary registers.
	ret