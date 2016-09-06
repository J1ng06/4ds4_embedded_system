
The distributions for each processor are contained in the folders
	exercise3a/
	exercise3b/
	exercise3c/

Note that the software is the same in each folder.  To run, create the NIOS
project, program the board with the appropriate .sof and execute the lcm.c file.
As a note, the algorithm and array size can be adjusted with the two defines at
the top:

#define ARRAY_SIZE 100 // array size of 500
#define ALGO_1         // use algorithm 1 (described below)
                       // other possibilities are ALGO_2 or ALGO_3

Algorithm #1:
Inputs: a, b
output: LCM of a and b
1) Define a_mult and b_mult as equal to 1.  
2) if a*a_mult is equal to b*b_mult
    - the product is the LCM
3) otherwise
    - if a*a_mult < b*b_mult increment a_mult
    - otherwise increment b_mult
    - goto 2)

The pseudocode is shown below:

    while (a_prod != b_prod)
        if (a_prod < b_prod) a_prod = ++a_mult * a;
        else b_prod = ++b_mult * b;

As you can see, only one multiplication is done in each iteration because the two sides of the branch are mutually exclusive.

Algorithm #2:
Conceptually it the same as Algorithm #1 but written slightly differently as shown below:

    while ((a_prod = a * a_mult) != (b_prod = b * b_mult)) {
        if (a_prod < b_prod) a_mult++;
        else b_mult++;
    }

Algorithm #3:
Compute the GCD and then the LCM is equal to a*b/GCD

The runtimes are given below:
Algorithm #1:
Processor A: 2360253
Processor B: 855582
Processor C: 871238

Algorithm #2:
Processor A: 1860250
Processor B: 1231421
Processor C: 1391890

Algorithm #3:
Processor A: 439542
Processor B: 21461
Processor C: 21156


The behaviour for Algorithm #3 is consistent with what has been observed in the lab for bubble sorting; that is, when adding an Instruction Cache, a Static Branch Predictor and a Hardware Multiplier/Divider there is an improvement in performance from Processor A to Processor B. When using a Data Cache and a Dynamic Branch Predictor, there is a further improvement in performance. However, there are a few interesting observations regarding Algorithms #1 and #2.

First, though Algorithm #2 has two multiplications and Algorithm #1 has only one, Algorithm #2 runs faster on Processor A than Algorithm #1. This is because the compiler is capable of generating machine code for Algorithm #2 equivalent to the following source code:

    while (a_prod != b_prod) {
        if (a_prod < b_prod) a_prod += a;
        else b_prod += b;
    }

By avoiding emulated multiplications on Processor A, Algorithm #2 outperforms Algorithm #1. However, on Processor B, because there is already a built-in Hardware Multiplier/Divider, the compiled code relies on the built-in multipliers, which are multi-cycle units. Therefore, Algorithm #1, which requires only one multiplication per iteration outperforms Algorithm #2 on Processor B. 

Another interesting observation is that for both Algorithms #1 and #2 moving from Processor B to Processor C does not bring any improvement in performance. This, again, may seem a little bit counter-intuitive; however, on closer inspection, the dynamic branch predictor used by Processor C relies on a 2-bit branch history table - whenever the branch predictor is in the "taken" state and a sequence like "not taken"/"not taken"/"taken" repeats itself, the dynamic branch predictor will constantly mis-predict, thus causing costly pipeline flushes. For a static branch predictor, as for Processor B, if the default branch prediction is "not taken", it will be accurate two times out of three for a sequence like "not taken"/"not taken"/"taken". Through profiling it has been observed that for the random sequence used as a test case in this exercise, the above type of sequence does occur quite often.

