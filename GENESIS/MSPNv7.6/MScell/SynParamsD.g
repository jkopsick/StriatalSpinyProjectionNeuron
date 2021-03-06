//genesis
/***************************		MS Model, Version 7.6	*********************
**************************** 	     SynParamsD.g 	*********************
	Avrama Blackwell 	kblackw1@gmu.edu
	Rebekah Evans 		rcolema2@gmu.edu
	Tom Sheehan 		tsheeha2@gmu.edu	
******************************************************************************
To change synaptic parameters, change the include in MScellSpine.g
*****************************************************************************/

	str AMPAname = "AMPA"
	float EkAMPA = 0.0
        float AMPAtau1 = 1.1e-3
        float AMPAtau2 = 5.75e-3 
        float AMPAgmax = 342e-12

        str GABAname = "GABA"
        float GABAtau1 = 0.25e-3    // From Galarreta and Hestrin 1997 
        float GABAtau2 = 3.75e-3    //(used in Wolfs model)
        float EkGABA = -0.060
        float GABAgmax = 750e-12  //Modified Koos 2004 

	int GABA2Spine = 0                                // = 0, No GABA; 
                                                  //   1, add GABA to spine head
                                                  //   2, add GABA to spine neck
	
	int addCa2Spine = 1		// 0, no ca channels in spine, 
					//1, yes ca channels in spine (non-synaptic)
	int NMDABufferMode = 0          // 1, connect both NMDA and AMPA calcium to NMDA_buffer
                                     // 0, connect only NMDA currents to NMDA_buffer

float useAMPANMDAGHKchannels= 0  // we do not use GHK project for NMDA/AMPA

// parameters for NMDA subunits

// NR2D
str	    subunit = "NR2D"
float   EkNMDA   = 0
float	Kmg       = 40
float	NMDAtau2      = (1700e-3)/2 	//NR2D average from (Vicini et al., 1998 figure 1B)
float	NMDAgmax      = 0.119e-9      //NR2D from (Moyner et al., 1994 figure 7)
int ghk_yesno=0

str NMDAname = {subunit}


 