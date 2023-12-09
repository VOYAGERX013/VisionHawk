<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ArduinoNano">
<packages>
<package name="ARDUINONANO">
<wire x1="0" y1="0" x2="43.2" y2="0" width="0.127" layer="21"/>
<wire x1="43.2" y1="0" x2="43.2" y2="-18" width="0.127" layer="21"/>
<wire x1="43.2" y1="-18" x2="0" y2="-18" width="0.127" layer="21"/>
<wire x1="0" y1="-18" x2="0" y2="0" width="0.127" layer="21"/>
<pad name="D13" x="3.81" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="3V3" x="6.35" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="AREF" x="8.89" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="A0" x="11.43" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="A1" x="13.97" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="A2" x="16.51" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="A3" x="19.05" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="A4/SDA" x="21.59" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="A5/SCL" x="24.13" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="A6" x="26.67" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="A7" x="29.21" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="5V" x="31.75" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="RST" x="34.29" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="GND" x="36.83" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="VIN" x="39.37" y="-16.51" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D12" x="3.81" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D11" x="6.35" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D10" x="8.89" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D9" x="11.43" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D8" x="13.97" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D7" x="16.51" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D6" x="19.05" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D5" x="21.59" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D4" x="24.13" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D3" x="26.67" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="D2" x="29.21" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="GND1" x="31.75" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="RST1" x="34.29" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="RX/D0" x="36.83" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<pad name="TX/D1" x="39.37" y="-1.27" drill="1" diameter="1.778" shape="octagon"/>
<text x="4.826" y="-14.732" size="1.27" layer="21" rot="R90">D13</text>
<text x="7.366" y="-14.732" size="1.27" layer="21" rot="R90">3V3</text>
<text x="9.906" y="-14.732" size="1.27" layer="21" rot="R90">AREF</text>
<text x="12.446" y="-14.732" size="1.27" layer="21" rot="R90">A0</text>
<text x="14.986" y="-14.732" size="1.27" layer="21" rot="R90">A1</text>
<text x="17.526" y="-14.732" size="1.27" layer="21" rot="R90">A2</text>
<text x="20.066" y="-14.732" size="1.27" layer="21" rot="R90">A3</text>
<text x="22.606" y="-14.732" size="1.27" layer="21" rot="R90">A4/SDA</text>
<text x="25.146" y="-14.732" size="1.27" layer="21" rot="R90">A5/SCL</text>
<text x="27.686" y="-14.732" size="1.27" layer="21" rot="R90">A6</text>
<text x="30.226" y="-14.732" size="1.27" layer="21" rot="R90">A7</text>
<text x="32.766" y="-14.732" size="1.27" layer="21" rot="R90">5V</text>
<text x="35.306" y="-14.732" size="1.27" layer="21" rot="R90">RST</text>
<text x="37.846" y="-14.732" size="1.27" layer="21" rot="R90">GND</text>
<text x="40.386" y="-14.732" size="1.27" layer="21" rot="R90">VIN</text>
<text x="4.826" y="-6.096" size="1.27" layer="21" rot="R90">D12</text>
<text x="7.366" y="-6.096" size="1.27" layer="21" rot="R90">D11</text>
<text x="9.906" y="-6.096" size="1.27" layer="21" rot="R90">D10</text>
<text x="12.446" y="-6.096" size="1.27" layer="21" rot="R90">D9</text>
<text x="14.986" y="-6.096" size="1.27" layer="21" rot="R90">D8</text>
<text x="17.526" y="-6.096" size="1.27" layer="21" rot="R90">D7</text>
<text x="20.066" y="-6.096" size="1.27" layer="21" rot="R90">D6</text>
<text x="22.606" y="-6.096" size="1.27" layer="21" rot="R90">D5</text>
<text x="25.146" y="-6.096" size="1.27" layer="21" rot="R90">D4</text>
<text x="27.686" y="-6.096" size="1.27" layer="21" rot="R90">D3</text>
<text x="30.226" y="-6.096" size="1.27" layer="21" rot="R90">D2</text>
<text x="32.766" y="-7.874" size="1.27" layer="21" rot="R90">GND1</text>
<text x="35.306" y="-7.366" size="1.27" layer="21" rot="R90">RST1</text>
<text x="37.846" y="-8.128" size="1.27" layer="21" rot="R90">RX/D0</text>
<text x="40.386" y="-7.874" size="1.27" layer="21" rot="R90">TX/D1</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINONANO">
<wire x1="-38.1" y1="17.78" x2="-38.1" y2="-2.54" width="0.254" layer="94"/>
<pin name="D13" x="-33.02" y="-7.62" length="middle" rot="R90"/>
<pin name="3V3" x="-27.94" y="-7.62" length="middle" rot="R90"/>
<pin name="AREF" x="-22.86" y="-7.62" length="middle" rot="R90"/>
<pin name="A0" x="-17.78" y="-7.62" length="middle" rot="R90"/>
<pin name="A1" x="-12.7" y="-7.62" length="middle" rot="R90"/>
<pin name="A2" x="-7.62" y="-7.62" length="middle" rot="R90"/>
<pin name="A3" x="-2.54" y="-7.62" length="middle" rot="R90"/>
<pin name="A4/SDA" x="2.54" y="-7.62" length="middle" rot="R90"/>
<pin name="A5/SCL" x="7.62" y="-7.62" length="middle" rot="R90"/>
<pin name="A6" x="12.7" y="-7.62" length="middle" rot="R90"/>
<pin name="A7" x="17.78" y="-7.62" length="middle" rot="R90"/>
<pin name="5V" x="22.86" y="-7.62" length="middle" rot="R90"/>
<pin name="RST" x="27.94" y="-7.62" length="middle" rot="R90"/>
<pin name="GND" x="33.02" y="-7.62" length="middle" rot="R90"/>
<pin name="VIN" x="38.1" y="-7.62" length="middle" rot="R90"/>
<wire x1="-38.1" y1="-2.54" x2="43.18" y2="-2.54" width="0.254" layer="94"/>
<wire x1="43.18" y1="-2.54" x2="43.18" y2="17.78" width="0.254" layer="94"/>
<wire x1="43.18" y1="17.78" x2="-38.1" y2="17.78" width="0.254" layer="94"/>
<pin name="D12" x="-33.02" y="22.86" length="middle" rot="R270"/>
<pin name="D11" x="-27.94" y="22.86" length="middle" rot="R270"/>
<pin name="D10" x="-22.86" y="22.86" length="middle" rot="R270"/>
<pin name="D9" x="-17.78" y="22.86" length="middle" rot="R270"/>
<pin name="D8" x="-12.7" y="22.86" length="middle" rot="R270"/>
<pin name="D7" x="-7.62" y="22.86" length="middle" rot="R270"/>
<pin name="D6" x="-2.54" y="22.86" length="middle" rot="R270"/>
<pin name="D5" x="2.54" y="22.86" length="middle" rot="R270"/>
<pin name="D4" x="7.62" y="22.86" length="middle" rot="R270"/>
<pin name="D3" x="12.7" y="22.86" length="middle" rot="R270"/>
<pin name="D2" x="17.78" y="22.86" length="middle" rot="R270"/>
<pin name="GND1" x="22.86" y="22.86" length="middle" rot="R270"/>
<pin name="RST1" x="27.94" y="22.86" length="middle" rot="R270"/>
<pin name="RX/D0" x="33.02" y="22.86" length="middle" rot="R270"/>
<pin name="TX/D1" x="38.1" y="22.86" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINONANO">
<gates>
<gate name="G$1" symbol="ARDUINONANO" x="-48.26" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINONANO">
<connects>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4/SDA" pad="A4/SDA"/>
<connect gate="G$1" pin="A5/SCL" pad="A5/SCL"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D10" pad="D10"/>
<connect gate="G$1" pin="D11" pad="D11"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RST1" pad="RST1"/>
<connect gate="G$1" pin="RX/D0" pad="RX/D0"/>
<connect gate="G$1" pin="TX/D1" pad="TX/D1"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="3.3V_REGULATOR">
<packages>
<package name="3.3V_REGULATOR">
<wire x1="0" y1="0" x2="0" y2="12" width="0.127" layer="21"/>
<wire x1="0" y1="12" x2="26" y2="12" width="0.127" layer="21"/>
<wire x1="26" y1="12" x2="26" y2="0" width="0.127" layer="21"/>
<wire x1="26" y1="0" x2="0" y2="0" width="0.127" layer="21"/>
<pad name="GND" x="1.776" y="4.831" drill="1.3" diameter="1.9304"/>
<pad name="VIN" x="1.774" y="7.37" drill="1.3" diameter="1.9304" shape="square"/>
<text x="1.304" y="8.523" size="1.27" layer="21">+</text>
<text x="1.458" y="2.687" size="1.27" layer="21">-</text>
<text x="0.575" y="10.02" size="1.27" layer="21">VIN</text>
<pad name="VOUT" x="24.166" y="7.371" drill="1.3" diameter="1.9304" shape="square"/>
<pad name="GND1" x="24.204" y="4.799" drill="1.3" diameter="1.9304"/>
<text x="20.598" y="9.598" size="1.27" layer="21">VOUT</text>
<text x="23.744" y="8.408" size="1.27" layer="21">+</text>
<text x="24.012" y="2.764" size="1.27" layer="21">-</text>
<text x="8.89" y="6.35" size="1.27" layer="21">AMS 3.3V</text>
</package>
</packages>
<symbols>
<symbol name="3.3V_REGULATOR">
<wire x1="-38.1" y1="17.78" x2="-38.1" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-38.1" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="17.78" x2="-38.1" y2="17.78" width="0.254" layer="94"/>
<pin name="VIN" x="-43.18" y="10.16" length="middle"/>
<pin name="GND" x="-43.18" y="2.54" length="middle"/>
<pin name="VOUT" x="12.7" y="10.16" length="middle" rot="R180"/>
<pin name="GND1" x="12.7" y="2.54" length="middle" rot="R180"/>
<text x="-20.32" y="5.08" size="1.778" layer="94">AMS 3.3V</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="3.3V_REGULATOR">
<gates>
<gate name="G$1" symbol="3.3V_REGULATOR" x="-35.56" y="-2.54"/>
</gates>
<devices>
<device name="" package="3.3V_REGULATOR">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="VOUT" pad="VOUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="ArduinoNano" deviceset="ARDUINONANO" device=""/>
<part name="U$2" library="3.3V_REGULATOR" deviceset="3.3V_REGULATOR" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-7.62" y="40.64" smashed="yes" rot="R90"/>
<instance part="U$2" gate="G$1" x="81.28" y="43.18" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
