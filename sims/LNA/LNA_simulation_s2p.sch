<Qucs Schematic 25.2.0>
<Properties>
  <View=144,56,887,675,3.07083,68,488>
  <Grid=10,10,1>
  <DataSet=LNA_simulation_s2p.dat>
  <DataDisplay=LNA_simulation_s2p.dpl>
  <OpenDisplay=0>
  <Script=LNA_simulation_s2p.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 570 300 0 0 0 0>
  <SPfile X1 1 570 210 -26 -65 0 0 "/home/juandeb/Learning/UN/RF/Final_Project/sims/LNA/sp/BFP460_w_noise_VCE_3.0V_IC_20mA.s2p" 0 "rectangular" 0 "cubic" 0 "open" 0 "2" 0>
  <GND * 1 730 140 0 0 0 0>
  <Vdc V1 1 730 110 18 -26 0 1 "5 V" 1>
  <R R3 1 680 180 15 -26 0 1 "48 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 570 130 -26 -59 1 0 "13.8 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Pac P1 1 400 260 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac P2 1 820 260 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 400 290 0 0 0 0>
  <GND * 1 820 290 0 0 0 0>
  <.SP SP1 1 210 50 0 50 0 0 "lin" 1 "1 MHz" 1 "200 MHz" 1 "20000" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <C C1 1 440 210 -26 -55 1 0 "330 pF" 1 "" 0 "neutral" 0>
  <C C2 1 730 210 -26 17 0 0 "330 pF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <510 130 540 130 "" 0 0 0 "">
  <510 210 540 210 "" 0 0 0 "">
  <510 130 510 210 "" 0 0 0 "">
  <600 130 620 130 "" 0 0 0 "">
  <600 210 620 210 "" 0 0 0 "">
  <620 130 620 210 "" 0 0 0 "">
  <680 60 730 60 "" 0 0 0 "">
  <680 60 680 150 "" 0 0 0 "">
  <730 60 730 80 "" 0 0 0 "">
  <620 210 680 210 "" 0 0 0 "">
  <400 210 410 210 "" 0 0 0 "">
  <400 210 400 230 "" 0 0 0 "">
  <470 210 510 210 "" 0 0 0 "">
  <760 210 820 210 "" 0 0 0 "">
  <820 210 820 230 "" 0 0 0 "">
  <680 210 700 210 "" 0 0 0 "">
  <570 240 570 300 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 240 500 240 160 3 #c0c0c0 1 00 1 0 5e+07 2e+08 1 0 0.5 1.06751 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S[1,1]" #0000ff 1 3 0 0 0>
	<"S[2,2]" #ff0000 1 3 0 0 0>
	<"S[1,2]" #ff00ff 0 3 0 0 0>
  </Rect>
  <Rect 550 500 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"S[2,1]" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
