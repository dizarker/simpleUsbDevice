<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_9" />
        <signal name="XLXN_21" />
        <signal name="XLXN_27" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_5(7:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_40" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_46" />
        <signal name="XLXN_13" />
        <signal name="XLXN_48" />
        <signal name="DP" />
        <signal name="XLXN_50" />
        <signal name="DM" />
        <signal name="LEDS(7:0)" />
        <signal name="clk50in" />
        <signal name="XLXN_54" />
        <port polarity="Output" name="DP" />
        <port polarity="Output" name="DM" />
        <port polarity="Output" name="LEDS(7:0)" />
        <port polarity="Input" name="clk50in" />
        <blockdef name="ls_usb_core">
            <timestamp>2019-1-11T23:29:35</timestamp>
            <rect width="304" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-256" y2="-256" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-76" height="24" />
            <line x2="432" y1="-64" y2="-64" x1="368" />
        </blockdef>
        <blockdef name="ls_usb_send">
            <timestamp>2019-1-11T23:29:48</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ls_usb_recv">
            <timestamp>2019-1-11T23:29:42</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="bufgce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="clkSrc">
            <timestamp>2019-1-11T23:43:7</timestamp>
            <rect width="544" x="32" y="32" height="1056" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="576" y1="80" y2="80" x1="608" />
        </blockdef>
        <block symbolname="ls_usb_core" name="XLXI_1">
            <blockpin signalname="XLXN_54" name="clk" />
            <blockpin signalname="XLXN_8" name="EOP" />
            <blockpin signalname="XLXN_6" name="wre" />
            <blockpin signalname="XLXN_7" name="show_next" />
            <blockpin signalname="XLXN_5(7:0)" name="data(7:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="rbyte_cnt(3:0)" />
            <blockpin signalname="XLXN_3" name="start_pkt" />
            <blockpin signalname="XLXN_2" name="last_pkt_byte" />
            <blockpin signalname="XLXN_1(7:0)" name="sbyte(7:0)" />
            <blockpin signalname="LEDS(7:0)" name="leds(7:0)" />
        </block>
        <block symbolname="ls_usb_send" name="XLXI_2">
            <blockpin signalname="XLXN_54" name="clk" />
            <blockpin signalname="XLXN_8" name="reset" />
            <blockpin signalname="XLXN_3" name="start_pkt" />
            <blockpin signalname="XLXN_2" name="last_pkt_byte" />
            <blockpin signalname="XLXN_1(7:0)" name="sbyte(7:0)" />
            <blockpin name="sbit" />
            <blockpin signalname="XLXN_11" name="dp" />
            <blockpin signalname="XLXN_12" name="dm" />
            <blockpin signalname="XLXN_13" name="bus_enable" />
            <blockpin signalname="XLXN_7" name="show_next" />
            <blockpin name="six_ones" />
        </block>
        <block symbolname="ls_usb_recv" name="XLXI_3">
            <blockpin signalname="XLXN_54" name="clk" />
            <blockpin signalname="DP" name="dp" />
            <blockpin signalname="DM" name="dm" />
            <blockpin signalname="XLXN_8" name="EOP" />
            <blockpin signalname="XLXN_6" name="rdata_ready" />
            <blockpin signalname="XLXN_5(7:0)" name="rdata(7:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="rbyte_cnt(3:0)" />
        </block>
        <block symbolname="bufgce" name="XLXI_5">
            <blockpin signalname="XLXN_13" name="CE" />
            <blockpin signalname="XLXN_12" name="I" />
            <blockpin signalname="DM" name="O" />
        </block>
        <block symbolname="bufgce" name="XLXI_4">
            <blockpin signalname="XLXN_13" name="CE" />
            <blockpin signalname="XLXN_11" name="I" />
            <blockpin signalname="DP" name="O" />
        </block>
        <block symbolname="clkSrc" name="XLXI_17">
            <blockpin signalname="clk50in" name="clk_in1" />
            <blockpin signalname="XLXN_54" name="clk_out1" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1392" y="1952" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2192" y="1712" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="2000" y1="1792" y2="1792" x1="1824" />
            <wire x2="2000" y1="1680" y2="1792" x1="2000" />
            <wire x2="2192" y1="1680" y2="1680" x1="2000" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1984" y1="1696" y2="1696" x1="1824" />
            <wire x2="1984" y1="1600" y2="1696" x1="1984" />
            <wire x2="2192" y1="1600" y2="1600" x1="1984" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1968" y1="1600" y2="1600" x1="1824" />
            <wire x2="1968" y1="1520" y2="1600" x1="1968" />
            <wire x2="2192" y1="1520" y2="1520" x1="1968" />
        </branch>
        <instance x="752" y="1392" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_4(3:0)">
            <wire x2="1264" y1="1360" y2="1360" x1="1136" />
            <wire x2="1264" y1="1360" y2="1920" x1="1264" />
            <wire x2="1392" y1="1920" y2="1920" x1="1264" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="1280" y1="1296" y2="1296" x1="1136" />
            <wire x2="1280" y1="1296" y2="1856" x1="1280" />
            <wire x2="1392" y1="1856" y2="1856" x1="1280" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1296" y1="1232" y2="1232" x1="1136" />
            <wire x2="1296" y1="1232" y2="1728" x1="1296" />
            <wire x2="1392" y1="1728" y2="1728" x1="1296" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1392" y1="1792" y2="1792" x1="1312" />
            <wire x2="1312" y1="1792" y2="2032" x1="1312" />
            <wire x2="2656" y1="2032" y2="2032" x1="1312" />
            <wire x2="2656" y1="1616" y2="1616" x1="2576" />
            <wire x2="2656" y1="1616" y2="2032" x1="2656" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1312" y1="1168" y2="1168" x1="1136" />
            <wire x2="1312" y1="1168" y2="1440" x1="1312" />
            <wire x2="1312" y1="1440" y2="1664" x1="1312" />
            <wire x2="1392" y1="1664" y2="1664" x1="1312" />
            <wire x2="2192" y1="1440" y2="1440" x1="1312" />
        </branch>
        <instance x="2880" y="1648" name="XLXI_5" orien="R0" />
        <instance x="2880" y="1456" name="XLXI_4" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="2880" y1="1424" y2="1424" x1="2576" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2736" y1="1488" y2="1488" x1="2576" />
            <wire x2="2736" y1="1488" y2="1616" x1="2736" />
            <wire x2="2880" y1="1616" y2="1616" x1="2736" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2864" y1="1552" y2="1552" x1="2576" />
            <wire x2="2880" y1="1552" y2="1552" x1="2864" />
            <wire x2="2880" y1="1360" y2="1360" x1="2864" />
            <wire x2="2864" y1="1360" y2="1552" x1="2864" />
        </branch>
        <branch name="DP">
            <wire x2="752" y1="1264" y2="1264" x1="720" />
            <wire x2="720" y1="1264" y2="2016" x1="720" />
            <wire x2="3168" y1="2016" y2="2016" x1="720" />
            <wire x2="3168" y1="1424" y2="1424" x1="3104" />
            <wire x2="3280" y1="1424" y2="1424" x1="3168" />
            <wire x2="3168" y1="1424" y2="2016" x1="3168" />
        </branch>
        <branch name="DM">
            <wire x2="752" y1="1360" y2="1360" x1="736" />
            <wire x2="736" y1="1360" y2="2000" x1="736" />
            <wire x2="3184" y1="2000" y2="2000" x1="736" />
            <wire x2="3184" y1="1616" y2="1616" x1="3104" />
            <wire x2="3280" y1="1616" y2="1616" x1="3184" />
            <wire x2="3184" y1="1616" y2="2000" x1="3184" />
        </branch>
        <branch name="LEDS(7:0)">
            <wire x2="1840" y1="1888" y2="1888" x1="1824" />
            <wire x2="2000" y1="1888" y2="1888" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1424" name="DP" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1616" name="DM" orien="R0" />
        <iomarker fontsize="28" x="2000" y="1888" name="LEDS(7:0)" orien="R0" />
        <instance x="1344" y="144" name="XLXI_17" orien="R0">
        </instance>
        <branch name="clk50in">
            <wire x2="1328" y1="224" y2="224" x1="1008" />
            <wire x2="1344" y1="224" y2="224" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1008" y="224" name="clk50in" orien="R180" />
        <branch name="XLXN_54">
            <wire x2="752" y1="1168" y2="1168" x1="704" />
            <wire x2="704" y1="1168" y2="1312" x1="704" />
            <wire x2="704" y1="1312" y2="1600" x1="704" />
            <wire x2="1328" y1="1600" y2="1600" x1="704" />
            <wire x2="1392" y1="1600" y2="1600" x1="1328" />
            <wire x2="1328" y1="1360" y2="1600" x1="1328" />
            <wire x2="1952" y1="1360" y2="1360" x1="1328" />
            <wire x2="2192" y1="1360" y2="1360" x1="1952" />
            <wire x2="2016" y1="224" y2="224" x1="1952" />
            <wire x2="2016" y1="224" y2="1296" x1="2016" />
            <wire x2="2016" y1="1296" y2="1296" x1="1952" />
            <wire x2="1952" y1="1296" y2="1360" x1="1952" />
        </branch>
    </sheet>
</drawing>