//
// PlanAhead(TM)
// rundef.js: a PlanAhead-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "K:/XilinxFPGA/14.7/ISE_DS/EDK/bin/nt64;K:/XilinxFPGA/14.7/ISE_DS/EDK/lib/nt64;K:/XilinxFPGA/14.7/ISE_DS/ISE/bin/nt64;K:/XilinxFPGA/14.7/ISE_DS/ISE/lib/nt64;K:/XilinxFPGA/14.7/ISE_DS/common/bin/nt64;K:/XilinxFPGA/14.7/ISE_DS/common/lib/nt64;K:/XilinxFPGA/14.7/ISE_DS/PlanAhead/bin;";
} else {
  PathVal = "K:/XilinxFPGA/14.7/ISE_DS/EDK/bin/nt64;K:/XilinxFPGA/14.7/ISE_DS/EDK/lib/nt64;K:/XilinxFPGA/14.7/ISE_DS/ISE/bin/nt64;K:/XilinxFPGA/14.7/ISE_DS/ISE/lib/nt64;K:/XilinxFPGA/14.7/ISE_DS/common/bin/nt64;K:/XilinxFPGA/14.7/ISE_DS/common/lib/nt64;K:/XilinxFPGA/14.7/ISE_DS/PlanAhead/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "ngdbuild",
         "-intstyle ise -p xc7a100tcsg324-3 -dd _ngo -uc \"LR3.ucf\" \"LR3.edf\"" );
ISEStep( "map",
         "-intstyle pa -w -r 4 -ol high \"LR3.ngd\"" );
ISEStep( "par",
         "-intstyle pa \"LR3.ncd\" -w \"LR3_routed.ncd\" -ol high" );
ISEStep( "trce",
         "-intstyle ise -o \"LR3.twr\" -v 3 -l 30 -nodatasheet -fastpaths \"LR3_routed.ncd\" \"LR3.pcf\"" );
ISEStep( "xdl",
         "-secure -ncd2xdl -nopips \"LR3_routed.ncd\" \"LR3_routed.xdl\"" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
