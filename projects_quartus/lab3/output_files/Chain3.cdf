/* Quartus II 64-Bit Version 15.0.0 Build 145 04/22/2015 SJ Web Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEMA5F31) Path("/afs/dcti.sut.ru/homes/students/ikpi43/ikpi43n08/ADCS/projects_quartus/lab3/output_files/") File("main.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
