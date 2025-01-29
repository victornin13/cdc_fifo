/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Nov 10 21:04:13 2024
/////////////////////////////////////////////////////////////


module fifo_memory ( write_data, write_addr, write_enable, write_clk, 
        write_rst_n, read_addr, read_enable, read_clk, read_rst_n, read_data
 );
  input [7:0] write_data;
  input [3:0] write_addr;
  input [3:0] read_addr;
  output [7:0] read_data;
  input write_enable, write_clk, write_rst_n, read_enable, read_clk,
         read_rst_n;
  wire   n98, n100, n103, n104, n105, n107, n109, n112, n113, n114, n116, n117,
         n118, n119, n120, n121, n122, n123, n125, n126, n128, n129, n130,
         n131, n133, n134, n135, n136, n139, n140, n141, n142, n143, n144,
         n145, n146, n148, n149, n151, n152, n153, n154, n155, n156, n158,
         n159, n160, n161, n162, n163, n165, n166, n3, n10, n259, n419, n95,
         n185, n186, n525, n227, n1144, n235, n167, n169, n170, n171, n173,
         n176, n181, n182, n183, n184, n187, n188, n189, n192, n193, n198,
         n200, n1150, n1155, n1168, n29, n30, n31, n32, n33, n34, n35, n37,
         n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n51, n52, n53,
         n54, n55, n56, n59, n60, n61, n62, n64, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n76, n78, n79, n80, n81, n82, n83, n85, n86, n89, n90,
         n91, n92, n93, n94, n96, n97, n99, n101, n102, n106, n110, n115, n124,
         n127, n132, n147, n150, n157, n164, n174, n177, n179, n190, n191,
         n194, n195, n199, n201, n202, n203, n204, n1436, n1437, n1438, n1439,
         n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449,
         n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459,
         n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469,
         n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479,
         n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489,
         n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499,
         n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509,
         n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518, n1519,
         n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529,
         n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538, n1539,
         n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549,
         n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, n1558, n1559,
         n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569,
         n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579,
         n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589,
         n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599,
         n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, n1608, n1609,
         n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618, n1619,
         n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629,
         n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639,
         n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647, n1648, n1649,
         n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658, n1659,
         n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669,
         n1670, n1671, n1673, n1675, n1677, n1679, n1682, n1684, n1686, n1687,
         n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696, n1697,
         n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706, n1707,
         n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717,
         n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727,
         n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736, n1737,
         n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746, n1747,
         n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757,
         n1758;

  DFFR_K \fifo_data_reg[2][5]  ( .D(n148), .CLK(write_clk), .RN(n1746), .QBAR(
        n1441) );
  DFF_K \fifo_data_reg[7][7]  ( .D(n185), .CLK(write_clk), .Q(n184), .QBAR(
        n1496) );
  DFF_K \fifo_data_reg[7][6]  ( .D(n109), .CLK(write_clk), .QBAR(n1456) );
  DFF_K \fifo_data_reg[7][5]  ( .D(n259), .CLK(write_clk), .Q(n183), .QBAR(
        n1497) );
  DFF_K \fifo_data_reg[7][4]  ( .D(n107), .CLK(write_clk), .Q(n177), .QBAR(
        n1498) );
  DFF_K \fifo_data_reg[7][3]  ( .D(n186), .CLK(write_clk), .Q(n182), .QBAR(
        n1500) );
  DFF_K \fifo_data_reg[7][2]  ( .D(n105), .CLK(write_clk), .QBAR(n1455) );
  DFF_K \fifo_data_reg[7][1]  ( .D(n104), .CLK(write_clk), .Q(n174), .QBAR(
        n1499) );
  DFF_K \fifo_data_reg[7][0]  ( .D(n103), .CLK(write_clk), .QBAR(n1437) );
  DFFR_K \fifo_data_reg[4][0]  ( .D(n204), .CLK(write_clk), .RN(n1747), .QBAR(
        n1453) );
  DFFR_K \fifo_data_reg[1][0]  ( .D(n151), .CLK(write_clk), .RN(n1744), .QBAR(
        n1443) );
  DFFR_K \fifo_data_reg[5][0]  ( .D(n119), .CLK(write_clk), .RN(n1744), .QBAR(
        n1454) );
  DFFR_K \fifo_data_reg[1][6]  ( .D(n10), .CLK(write_clk), .RN(n1744), .Q(n132), .QBAR(n1558) );
  DFFR_K \fifo_data_reg[3][6]  ( .D(n141), .CLK(write_clk), .RN(n1744), .Q(
        n127), .QBAR(n1562) );
  DFFR_K \fifo_data_reg[4][3]  ( .D(n130), .CLK(write_clk), .RN(n1741), .QBAR(
        n1452) );
  DFFR_K \fifo_data_reg[5][6]  ( .D(n125), .CLK(write_clk), .RN(n1741), .Q(
        n102), .QBAR(n1554) );
  DFFR_K \fifo_data_reg[5][2]  ( .D(n121), .CLK(write_clk), .RN(n1742), .Q(n96), .QBAR(n1552) );
  DFFR_K \fifo_data_reg[0][5]  ( .D(n3), .CLK(write_clk), .RN(n1747), .QBAR(
        n1451) );
  DFFR_K \fifo_data_reg[0][3]  ( .D(n162), .CLK(write_clk), .RN(n1746), .QBAR(
        n1444) );
  DFFR_K \fifo_data_reg[0][0]  ( .D(n159), .CLK(write_clk), .RN(n1746), .QBAR(
        n1442) );
  DFFR_K \fifo_data_reg[0][7]  ( .D(n166), .CLK(write_clk), .RN(n1741), .QBAR(
        n1450) );
  DFFR_K \fifo_data_reg[6][0]  ( .D(n1463), .CLK(write_clk), .RN(n1750), 
        .QBAR(n80) );
  DFFR_K \fifo_data_reg[2][0]  ( .D(n143), .CLK(write_clk), .RN(n1750), .QBAR(
        n79) );
  DFFR_K \fifo_data_reg[6][5]  ( .D(n116), .CLK(write_clk), .RN(n1749), .QBAR(
        n82) );
  DFFR_K \fifo_data_reg[6][3]  ( .D(n114), .CLK(write_clk), .RN(n1749), .QBAR(
        n81) );
  DFFR_K \fifo_data_reg[1][2]  ( .D(n153), .CLK(write_clk), .RN(n1747), .Q(
        n167), .QBAR(n1556) );
  DFFR_K \fifo_data_reg[3][2]  ( .D(n235), .CLK(write_clk), .RN(n1747), .Q(n95), .QBAR(n1560) );
  INVERT_D U120 ( .A(write_enable), .Z(n43) );
  DFFR_E \read_data_reg[5]  ( .D(n100), .CLK(read_clk), .RN(n1738), .QBAR(
        n1462) );
  DFFR_E \read_data_reg[3]  ( .D(n98), .CLK(read_clk), .RN(n1738), .QBAR(n1461) );
  DFFR_E \read_data_reg[0]  ( .D(n203), .CLK(read_clk), .RN(n1738), .Q(n1144), 
        .QBAR(n1464) );
  DFFR_E \read_data_reg[7]  ( .D(n227), .CLK(read_clk), .RN(n1738), .QBAR(
        n1460) );
  DFFR_E \read_data_reg[1]  ( .D(n1637), .CLK(read_clk), .RN(n1738), .QBAR(
        n1440) );
  DFFR_E \read_data_reg[4]  ( .D(n1636), .CLK(read_clk), .RN(n1739), .QBAR(
        n1447) );
  DFFR_E \read_data_reg[6]  ( .D(n1438), .CLK(read_clk), .RN(n1739), .QBAR(
        n1446) );
  DFFR_E \read_data_reg[2]  ( .D(n1635), .CLK(read_clk), .RN(n1739), .QBAR(
        n1445) );
  DFFR_E \fifo_data_reg[6][7]  ( .D(n118), .CLK(write_clk), .RN(n1749), .Q(
        n176) );
  DFFR_H \fifo_data_reg[4][5]  ( .D(n419), .CLK(write_clk), .RN(n1741), .Q(
        n101) );
  DFFR_H \fifo_data_reg[4][7]  ( .D(n134), .CLK(write_clk), .RN(n1744), .Q(n93) );
  DFFR_H \fifo_data_reg[2][3]  ( .D(n146), .CLK(write_clk), .RN(n1741), .Q(
        n110) );
  DFFR_H \fifo_data_reg[2][7]  ( .D(n525), .CLK(write_clk), .RN(n1743), .Q(n94) );
  DFFR_H \fifo_data_reg[3][0]  ( .D(n135), .CLK(write_clk), .RN(n1747), .Q(
        n124) );
  DFFR_H \fifo_data_reg[0][4]  ( .D(n163), .CLK(write_clk), .RN(n1745), .Q(n86), .QBAR(n1495) );
  DFFR_H \fifo_data_reg[2][4]  ( .D(n199), .CLK(write_clk), .RN(n1746), .Q(
        n195), .QBAR(n1494) );
  DFFR_H \fifo_data_reg[4][4]  ( .D(n131), .CLK(write_clk), .RN(n1743), .Q(
        n190), .QBAR(n1493) );
  DFFR_H \fifo_data_reg[6][4]  ( .D(n1168), .CLK(write_clk), .RN(n1742), .Q(
        n179), .QBAR(n1492) );
  DFFR_H \fifo_data_reg[1][7]  ( .D(n158), .CLK(write_clk), .RN(n1748), .Q(
        n170), .QBAR(n1491) );
  DFFR_H \fifo_data_reg[3][7]  ( .D(n142), .CLK(write_clk), .RN(n1748), .Q(
        n169), .QBAR(n1490) );
  DFFR_H \fifo_data_reg[5][7]  ( .D(n126), .CLK(write_clk), .RN(n1745), .Q(
        n164), .QBAR(n1489) );
  DFFR_H \fifo_data_reg[1][4]  ( .D(n155), .CLK(write_clk), .RN(n1743), .Q(
        n147), .QBAR(n1486) );
  DFFR_H \fifo_data_reg[3][4]  ( .D(n139), .CLK(write_clk), .RN(n1742), .Q(n99), .QBAR(n1487) );
  DFFR_H \fifo_data_reg[5][4]  ( .D(n123), .CLK(write_clk), .RN(n1742), .Q(n97), .QBAR(n1488) );
  DFFR_H \fifo_data_reg[0][1]  ( .D(n160), .CLK(write_clk), .RN(n1744), .Q(n85), .QBAR(n1485) );
  DFFR_H \fifo_data_reg[2][1]  ( .D(n144), .CLK(write_clk), .RN(n1745), .Q(
        n150), .QBAR(n1484) );
  DFFR_H \fifo_data_reg[4][1]  ( .D(n128), .CLK(write_clk), .RN(n1742), .Q(
        n106), .QBAR(n1483) );
  DFFR_H \fifo_data_reg[6][1]  ( .D(n112), .CLK(write_clk), .RN(n1745), .Q(
        n115), .QBAR(n1482) );
  DFFR_H \fifo_data_reg[0][6]  ( .D(n165), .CLK(write_clk), .RN(n1750), .Q(
        n198), .QBAR(n1481) );
  DFFR_H \fifo_data_reg[2][6]  ( .D(n149), .CLK(write_clk), .RN(n1745), .Q(
        n192), .QBAR(n1480) );
  DFFR_H \fifo_data_reg[4][6]  ( .D(n133), .CLK(write_clk), .RN(n1747), .Q(
        n191), .QBAR(n1479) );
  DFFR_H \fifo_data_reg[6][6]  ( .D(n117), .CLK(write_clk), .RN(n1748), .Q(
        n187), .QBAR(n1478) );
  DFFR_H \fifo_data_reg[0][2]  ( .D(n161), .CLK(write_clk), .RN(n1746), .Q(n83), .QBAR(n1477) );
  DFFR_H \fifo_data_reg[2][2]  ( .D(n145), .CLK(write_clk), .RN(n1746), .Q(
        n194), .QBAR(n1476) );
  DFFR_H \fifo_data_reg[4][2]  ( .D(n129), .CLK(write_clk), .RN(n1743), .Q(n92), .QBAR(n1475) );
  DFFR_H \fifo_data_reg[6][2]  ( .D(n113), .CLK(write_clk), .RN(n1743), .Q(n91), .QBAR(n1474) );
  DFFR_H \fifo_data_reg[1][5]  ( .D(n156), .CLK(write_clk), .RN(n1748), .Q(
        n193), .QBAR(n1473) );
  DFFR_H \fifo_data_reg[3][5]  ( .D(n140), .CLK(write_clk), .RN(n1748), .Q(
        n173), .QBAR(n1472) );
  DFFR_H \fifo_data_reg[5][5]  ( .D(n1155), .CLK(write_clk), .RN(n1748), .Q(
        n189), .QBAR(n1471) );
  DFFR_H \fifo_data_reg[1][3]  ( .D(n154), .CLK(write_clk), .RN(n1749), .Q(
        n181), .QBAR(n1470) );
  DFFR_H \fifo_data_reg[3][3]  ( .D(n200), .CLK(write_clk), .RN(n1749), .Q(
        n171), .QBAR(n1469) );
  DFFR_H \fifo_data_reg[5][3]  ( .D(n122), .CLK(write_clk), .RN(n1749), .Q(
        n188), .QBAR(n1468) );
  DFFR_H \fifo_data_reg[1][1]  ( .D(n152), .CLK(write_clk), .RN(n1745), .Q(
        n157), .QBAR(n1467) );
  DFFR_H \fifo_data_reg[3][1]  ( .D(n136), .CLK(write_clk), .RN(n1743), .Q(n90), .QBAR(n1466) );
  DFFR_H \fifo_data_reg[5][1]  ( .D(n120), .CLK(write_clk), .RN(n1742), .Q(n89), .QBAR(n1465) );
  INVERT_H U2 ( .A(n1730), .Z(n1731) );
  INVERT_H U3 ( .A(n53), .Z(n1730) );
  NOR2_D U4 ( .A(n45), .B(read_addr[2]), .Z(n53) );
  INVERT_K U5 ( .A(write_addr[1]), .Z(n41) );
  INVERT_H U6 ( .A(n1735), .Z(n1623) );
  INVERT_H U7 ( .A(n1735), .Z(n1612) );
  INVERT_L U8 ( .A(n1711), .Z(n1712) );
  INVERT_H U9 ( .A(n42), .Z(n1711) );
  INVERT_K U10 ( .A(n1655), .Z(n1709) );
  INVERT_H U11 ( .A(n1710), .Z(n1655) );
  INVERT_K U12 ( .A(n1713), .Z(n1714) );
  INVERT_H U13 ( .A(n1715), .Z(n1713) );
  BUFFER_I U14 ( .A(n1653), .Z(n1715) );
  INVERT_H U15 ( .A(n1735), .Z(n1606) );
  INVERT_E U16 ( .A(n76), .Z(n1657) );
  INVERT_E U17 ( .A(n68), .Z(n1638) );
  INVERT_K U18 ( .A(n1600), .Z(n1601) );
  INVERT_L U19 ( .A(n1606), .Z(n1607) );
  INVERT_K U20 ( .A(n1632), .Z(n1633) );
  NAND3_E U21 ( .A(n1712), .B(n41), .C(n1709), .Z(n1436) );
  AO222_F U22 ( .A1(n1729), .A2(n48), .B1(n1726), .B2(n1458), .C1(n1702), .C2(
        n46), .Z(n1438) );
  OR2_H U23 ( .A(n1596), .B(n1597), .Z(n1439) );
  INVERT_I U24 ( .A(n1603), .Z(n1605) );
  INVERT_H U25 ( .A(n1733), .Z(n1539) );
  INVERT_K U26 ( .A(n1600), .Z(n1602) );
  INVERT_I U27 ( .A(n1603), .Z(n1604) );
  INVERT_I U28 ( .A(n54), .Z(n1732) );
  INVERT_D U29 ( .A(n59), .Z(n1580) );
  OR2_H U30 ( .A(n1510), .B(n1511), .Z(n1448) );
  OR2_H U31 ( .A(n1521), .B(n1522), .Z(n1449) );
  INVERT_J U32 ( .A(n55), .Z(n1686) );
  OR2_J U33 ( .A(n1531), .B(n1532), .Z(n1457) );
  OR2_J U34 ( .A(n1543), .B(n1544), .Z(n1458) );
  OR2_H U35 ( .A(n1501), .B(n1502), .Z(n1459) );
  INVERT_L U36 ( .A(n1732), .Z(n1733) );
  INVERT_M U37 ( .A(n1734), .Z(n1735) );
  INVERT_I U38 ( .A(n52), .Z(n1734) );
  AO22_F U39 ( .A1(n29), .A2(n1644), .B1(write_data[0]), .B2(n34), .Z(n1463)
         );
  NAND3_H U40 ( .A(n1712), .B(n41), .C(n1714), .Z(n62) );
  NAND3_H U41 ( .A(n1709), .B(n1712), .C(write_addr[1]), .Z(n55) );
  INVERT_I U42 ( .A(n1733), .Z(n1603) );
  INVERT_J U43 ( .A(n1705), .Z(n1679) );
  INVERT_I U44 ( .A(n1460), .Z(n1705) );
  INVERT_J U45 ( .A(n1707), .Z(n1682) );
  INVERT_I U46 ( .A(n1461), .Z(n1707) );
  INVERT_J U47 ( .A(n1708), .Z(n1684) );
  INVERT_I U48 ( .A(n1462), .Z(n1708) );
  INVERT_J U49 ( .A(n1701), .Z(n1671) );
  INVERT_I U50 ( .A(n1445), .Z(n1701) );
  INVERT_J U51 ( .A(n1702), .Z(n1673) );
  INVERT_I U52 ( .A(n1446), .Z(n1702) );
  INVERT_J U53 ( .A(n1703), .Z(n1675) );
  INVERT_I U54 ( .A(n1447), .Z(n1703) );
  INVERT_J U55 ( .A(n1704), .Z(n1677) );
  INVERT_I U56 ( .A(n1440), .Z(n1704) );
  NOR2_C U57 ( .A(n1499), .B(n1610), .Z(n1503) );
  NOR2_C U58 ( .A(n1591), .B(n1465), .Z(n1504) );
  INVERT_H U59 ( .A(n1601), .Z(n1505) );
  NOR2_C U60 ( .A(n1505), .B(n1466), .Z(n1506) );
  NOR2_C U61 ( .A(n1539), .B(n1467), .Z(n1507) );
  NOR2_C U62 ( .A(n1503), .B(n1504), .Z(n1508) );
  INVERT_E U63 ( .A(n1508), .Z(n1501) );
  NOR2_C U64 ( .A(n1506), .B(n1507), .Z(n1509) );
  INVERT_E U65 ( .A(n1509), .Z(n1502) );
  INVERT_H U66 ( .A(n1633), .Z(n1512) );
  NOR2_C U67 ( .A(n1500), .B(n1512), .Z(n1513) );
  NOR2_C U68 ( .A(n1524), .B(n1468), .Z(n1514) );
  INVERT_H U69 ( .A(n1602), .Z(n1515) );
  NOR2_C U70 ( .A(n1515), .B(n1469), .Z(n1516) );
  INVERT_D U71 ( .A(n1605), .Z(n1517) );
  NOR2_C U72 ( .A(n1517), .B(n1470), .Z(n1518) );
  NOR2_C U73 ( .A(n1513), .B(n1514), .Z(n1519) );
  INVERT_E U74 ( .A(n1519), .Z(n1510) );
  NOR2_C U75 ( .A(n1516), .B(n1518), .Z(n1520) );
  INVERT_E U76 ( .A(n1520), .Z(n1511) );
  NOR2_C U77 ( .A(n1512), .B(n1497), .Z(n1523) );
  INVERT_H U78 ( .A(n1607), .Z(n1524) );
  NOR2_C U79 ( .A(n1524), .B(n1471), .Z(n1525) );
  NOR2_C U80 ( .A(n1515), .B(n1472), .Z(n1526) );
  INVERT_D U81 ( .A(n1604), .Z(n1527) );
  NOR2_C U82 ( .A(n1527), .B(n1473), .Z(n1528) );
  NOR2_C U83 ( .A(n1523), .B(n1525), .Z(n1529) );
  INVERT_E U84 ( .A(n1529), .Z(n1521) );
  NOR2_C U85 ( .A(n1526), .B(n1528), .Z(n1530) );
  INVERT_E U86 ( .A(n1530), .Z(n1522) );
  INVERT_H U87 ( .A(n1633), .Z(n1533) );
  NOR2_C U88 ( .A(n1533), .B(n1474), .Z(n1534) );
  INVERT_H U89 ( .A(n1607), .Z(n1535) );
  NOR2_C U90 ( .A(n1535), .B(n1475), .Z(n1536) );
  INVERT_H U91 ( .A(n1602), .Z(n1537) );
  NOR2_C U92 ( .A(n1537), .B(n1476), .Z(n1538) );
  NOR2_C U93 ( .A(n1539), .B(n1477), .Z(n1540) );
  NOR2_C U94 ( .A(n1534), .B(n1536), .Z(n1541) );
  INVERT_E U95 ( .A(n1541), .Z(n1531) );
  NOR2_C U96 ( .A(n1538), .B(n1540), .Z(n1542) );
  INVERT_E U97 ( .A(n1542), .Z(n1532) );
  NOR2_C U98 ( .A(n1533), .B(n1478), .Z(n1545) );
  NOR2_C U99 ( .A(n1535), .B(n1479), .Z(n1546) );
  NOR2_C U100 ( .A(n1537), .B(n1480), .Z(n1547) );
  INVERT_H U101 ( .A(n1733), .Z(n1548) );
  NOR2_C U102 ( .A(n1548), .B(n1481), .Z(n1549) );
  NOR2_C U103 ( .A(n1545), .B(n1546), .Z(n1550) );
  INVERT_E U104 ( .A(n1550), .Z(n1543) );
  NOR2_C U105 ( .A(n1547), .B(n1549), .Z(n1551) );
  INVERT_E U106 ( .A(n1551), .Z(n1544) );
  INVERT_H U107 ( .A(n1552), .Z(n1553) );
  INVERT_H U108 ( .A(n1554), .Z(n1555) );
  INVERT_H U109 ( .A(n1556), .Z(n1557) );
  INVERT_H U110 ( .A(n1558), .Z(n1559) );
  INVERT_H U111 ( .A(n1560), .Z(n1561) );
  INVERT_H U112 ( .A(n1562), .Z(n1563) );
  INVERT_F U113 ( .A(write_data[1]), .Z(n1564) );
  INVERT_H U114 ( .A(n1564), .Z(n1565) );
  INVERT_F U115 ( .A(write_data[2]), .Z(n1566) );
  INVERT_H U116 ( .A(n1566), .Z(n1567) );
  INVERT_F U117 ( .A(write_data[3]), .Z(n1568) );
  INVERT_H U118 ( .A(n1568), .Z(n1569) );
  INVERT_F U119 ( .A(write_data[6]), .Z(n1570) );
  INVERT_H U121 ( .A(n1570), .Z(n1571) );
  INVERT_F U122 ( .A(write_data[5]), .Z(n1572) );
  INVERT_H U123 ( .A(n1572), .Z(n1573) );
  INVERT_F U124 ( .A(write_data[7]), .Z(n1574) );
  INVERT_H U125 ( .A(n1574), .Z(n1575) );
  INVERT_F U126 ( .A(write_data[0]), .Z(n1576) );
  INVERT_H U127 ( .A(n1576), .Z(n1577) );
  INVERT_F U128 ( .A(write_data[4]), .Z(n1578) );
  INVERT_H U129 ( .A(n1578), .Z(n1579) );
  NOR2_C U130 ( .A(n1581), .B(n1582), .Z(n59) );
  INVERT_H U131 ( .A(n1634), .Z(n1583) );
  NOR2_C U132 ( .A(n1583), .B(n1482), .Z(n1584) );
  NOR2_C U133 ( .A(n1734), .B(n1483), .Z(n1585) );
  NOR2_C U134 ( .A(n1505), .B(n1484), .Z(n1586) );
  INVERT_D U135 ( .A(n1604), .Z(n1587) );
  NOR2_C U136 ( .A(n1587), .B(n1485), .Z(n1588) );
  NOR2_C U137 ( .A(n1584), .B(n1585), .Z(n1589) );
  INVERT_E U138 ( .A(n1589), .Z(n1581) );
  NOR2_C U139 ( .A(n1586), .B(n1588), .Z(n1590) );
  INVERT_E U140 ( .A(n1590), .Z(n1582) );
  AO2222_F U141 ( .A1(n1633), .A2(n1668), .B1(n96), .B2(n1607), .C1(n95), .C2(
        n1601), .D1(n167), .D2(n1733), .Z(n56) );
  AO2222_F U142 ( .A1(n1633), .A2(n1669), .B1(n102), .B2(n1607), .C1(n127), 
        .C2(n1601), .D1(n132), .D2(n1733), .Z(n48) );
  INVERT_F U143 ( .A(n1607), .Z(n1591) );
  NOR2_C U144 ( .A(n1548), .B(n1486), .Z(n1592) );
  NOR2_C U145 ( .A(n1600), .B(n1487), .Z(n1593) );
  NOR2_C U146 ( .A(n1591), .B(n1488), .Z(n1594) );
  NOR2_C U147 ( .A(n1583), .B(n1498), .Z(n1595) );
  NOR2_C U148 ( .A(n1592), .B(n1593), .Z(n1598) );
  INVERT_E U149 ( .A(n1598), .Z(n1596) );
  NOR2_C U150 ( .A(n1594), .B(n1595), .Z(n1599) );
  INVERT_E U151 ( .A(n1599), .Z(n1597) );
  INVERT_K U152 ( .A(n1731), .Z(n1600) );
  NOR2_C U153 ( .A(n1608), .B(n1609), .Z(n68) );
  INVERT_H U154 ( .A(n1634), .Z(n1610) );
  NOR2_D U155 ( .A(n1610), .B(n1496), .Z(n1611) );
  NOR2_C U156 ( .A(n1612), .B(n1489), .Z(n1613) );
  INVERT_D U157 ( .A(n1602), .Z(n1614) );
  NOR2_C U158 ( .A(n1614), .B(n1490), .Z(n1615) );
  NOR2_C U159 ( .A(n1732), .B(n1491), .Z(n1616) );
  NOR2_C U160 ( .A(n1611), .B(n1613), .Z(n1617) );
  INVERT_E U161 ( .A(n1617), .Z(n1608) );
  NOR2_C U162 ( .A(n1615), .B(n1616), .Z(n1618) );
  INVERT_E U163 ( .A(n1618), .Z(n1609) );
  NOR2_C U164 ( .A(n1619), .B(n1620), .Z(n76) );
  INVERT_H U165 ( .A(n1634), .Z(n1621) );
  NOR2_C U166 ( .A(n1621), .B(n1492), .Z(n1622) );
  NOR2_C U167 ( .A(n1493), .B(n1623), .Z(n1624) );
  INVERT_D U168 ( .A(n1601), .Z(n1625) );
  NOR2_C U169 ( .A(n1494), .B(n1625), .Z(n1626) );
  INVERT_D U170 ( .A(n1605), .Z(n1627) );
  NOR2_C U171 ( .A(n1495), .B(n1627), .Z(n1628) );
  NOR2_C U172 ( .A(n1622), .B(n1624), .Z(n1629) );
  INVERT_E U173 ( .A(n1629), .Z(n1619) );
  NOR2_C U174 ( .A(n1626), .B(n1628), .Z(n1630) );
  INVERT_E U175 ( .A(n1630), .Z(n1620) );
  INVERT_H U176 ( .A(n1443), .Z(n1631) );
  INVERT_K U177 ( .A(n51), .Z(n1632) );
  INVERT_M U178 ( .A(n1632), .Z(n1634) );
  AO22_F U179 ( .A1(n1737), .A2(n124), .B1(write_data[0]), .B2(n1721), .Z(n135) );
  AO22_F U180 ( .A1(n1736), .A2(n183), .B1(write_data[5]), .B2(n1718), .Z(n259) );
  AO22_F U181 ( .A1(n1736), .A2(n184), .B1(n1575), .B2(n1717), .Z(n185) );
  INVERT_E U182 ( .A(n1729), .Z(n1662) );
  AOI222_H U183 ( .A1(n1729), .A2(n56), .B1(n1726), .B2(n1457), .C1(n1701), 
        .C2(n46), .Z(n201) );
  INVERT_C U184 ( .A(n201), .Z(n1635) );
  AOI222_H U185 ( .A1(n1729), .A2(n1439), .B1(n1726), .B2(n1657), .C1(n1703), 
        .C2(n46), .Z(n1150) );
  INVERT_C U186 ( .A(n1150), .Z(n1636) );
  AOI222_H U187 ( .A1(n1729), .A2(n1459), .B1(n1726), .B2(n1580), .C1(n1704), 
        .C2(n46), .Z(n202) );
  INVERT_C U188 ( .A(n202), .Z(n1637) );
  AO22_F U189 ( .A1(n1644), .A2(n91), .B1(n1567), .B2(n34), .Z(n113) );
  AO22_F U190 ( .A1(n1644), .A2(n115), .B1(write_data[1]), .B2(n34), .Z(n112)
         );
  AO22_F U191 ( .A1(n1644), .A2(n179), .B1(write_data[4]), .B2(n34), .Z(n1168)
         );
  INVERT_M U192 ( .A(n1644), .Z(n34) );
  AO22_F U193 ( .A1(n30), .A2(n1687), .B1(n1639), .B2(write_data[0]), .Z(n143)
         );
  AO22_F U194 ( .A1(n1687), .A2(n94), .B1(n1639), .B2(write_data[7]), .Z(n525)
         );
  INVERT_I U195 ( .A(n55), .Z(n1639) );
  INVERT_I U196 ( .A(n1688), .Z(n1640) );
  AO22_F U197 ( .A1(n1687), .A2(n110), .B1(n1640), .B2(write_data[3]), .Z(n146) );
  AO22_F U198 ( .A1(n1687), .A2(n150), .B1(n1639), .B2(write_data[1]), .Z(n144) );
  AO22_F U199 ( .A1(n1689), .A2(n194), .B1(n1639), .B2(write_data[2]), .Z(n145) );
  AO22_F U200 ( .A1(n1695), .A2(n92), .B1(n1641), .B2(write_data[2]), .Z(n129)
         );
  INVERT_I U201 ( .A(n62), .Z(n1641) );
  INVERT_I U202 ( .A(n1696), .Z(n1642) );
  AO22_F U203 ( .A1(n1695), .A2(n93), .B1(n1642), .B2(write_data[7]), .Z(n134)
         );
  AO22_F U204 ( .A1(n1695), .A2(n101), .B1(n1642), .B2(write_data[5]), .Z(n419) );
  AO22_F U205 ( .A1(n1697), .A2(n106), .B1(n1641), .B2(write_data[1]), .Z(n128) );
  AO22_F U206 ( .A1(n1691), .A2(n1557), .B1(write_data[2]), .B2(n37), .Z(n153)
         );
  AO22_F U207 ( .A1(n1691), .A2(n170), .B1(write_data[7]), .B2(n37), .Z(n158)
         );
  AO22_F U208 ( .A1(n1691), .A2(n193), .B1(write_data[5]), .B2(n37), .Z(n156)
         );
  AO22_F U209 ( .A1(n1691), .A2(n181), .B1(write_data[3]), .B2(n37), .Z(n154)
         );
  INVERT_M U210 ( .A(n1691), .Z(n37) );
  AO22_F U211 ( .A1(n1644), .A2(n187), .B1(n1571), .B2(n34), .Z(n117) );
  AO22_F U212 ( .A1(n32), .A2(n1644), .B1(n1569), .B2(n34), .Z(n114) );
  INVERT_I U213 ( .A(n74), .Z(n1643) );
  INVERT_N U214 ( .A(n1643), .Z(n1644) );
  NAND3_E U215 ( .A(write_addr[1]), .B(n1712), .C(n1714), .Z(n74) );
  AO22_F U216 ( .A1(n31), .A2(n1644), .B1(n1573), .B2(n34), .Z(n116) );
  AO22_F U217 ( .A1(n176), .A2(n1644), .B1(write_data[7]), .B2(n34), .Z(n118)
         );
  AO22_F U218 ( .A1(n1691), .A2(n1559), .B1(write_data[6]), .B2(n37), .Z(n10)
         );
  AO22_F U219 ( .A1(n1691), .A2(n1631), .B1(write_data[0]), .B2(n37), .Z(n151)
         );
  AO22_F U220 ( .A1(n1691), .A2(n147), .B1(write_data[4]), .B2(n37), .Z(n155)
         );
  AO22_F U221 ( .A1(n1691), .A2(n157), .B1(n1565), .B2(n37), .Z(n152) );
  INVERT_N U222 ( .A(n1690), .Z(n1691) );
  INVERT_H U223 ( .A(n1452), .Z(n1645) );
  INVERT_H U224 ( .A(n1454), .Z(n1646) );
  INVERT_H U225 ( .A(n1453), .Z(n1647) );
  INVERT_H U226 ( .A(n1450), .Z(n1648) );
  INVERT_H U227 ( .A(n1442), .Z(n1649) );
  INVERT_H U228 ( .A(n1444), .Z(n1650) );
  INVERT_H U229 ( .A(n1451), .Z(n1651) );
  INVERT_D U230 ( .A(n72), .Z(n1652) );
  INVERT_E U231 ( .A(n1652), .Z(n1653) );
  AO22_F U232 ( .A1(n1724), .A2(n1650), .B1(n40), .B2(write_data[3]), .Z(n162)
         );
  AO22_F U233 ( .A1(n1724), .A2(n85), .B1(n40), .B2(write_data[1]), .Z(n160)
         );
  AO22_F U234 ( .A1(n1724), .A2(n83), .B1(n40), .B2(write_data[2]), .Z(n161)
         );
  AO22_F U235 ( .A1(n1724), .A2(n198), .B1(n40), .B2(write_data[6]), .Z(n165)
         );
  AO22_F U236 ( .A1(n1724), .A2(n1651), .B1(write_data[5]), .B2(n40), .Z(n3)
         );
  AO22_F U237 ( .A1(n1724), .A2(n86), .B1(write_data[4]), .B2(n40), .Z(n163)
         );
  INVERT_M U238 ( .A(n1724), .Z(n40) );
  AO22_F U239 ( .A1(n1724), .A2(n1649), .B1(n1577), .B2(n40), .Z(n159) );
  AO22_F U240 ( .A1(n1724), .A2(n1648), .B1(n1575), .B2(n40), .Z(n166) );
  AO22_F U241 ( .A1(n1737), .A2(n99), .B1(n1579), .B2(n1722), .Z(n139) );
  INVERT_H U242 ( .A(n1441), .Z(n1654) );
  INVERT_H U243 ( .A(n70), .Z(n1710) );
  OR2_I U244 ( .A(n43), .B(write_addr[2]), .Z(n70) );
  AO222_F U245 ( .A1(n1729), .A2(n1638), .B1(n1726), .B2(n69), .C1(n1705), 
        .C2(n46), .Z(n227) );
  INVERT_D U246 ( .A(n49), .Z(n1656) );
  NOR2_E U247 ( .A(n46), .B(read_addr[0]), .Z(n49) );
  AO2222_F U248 ( .A1(n176), .A2(n1634), .B1(n93), .B2(n1735), .C1(n94), .C2(
        n1602), .D1(n1648), .D2(n1604), .Z(n69) );
  INVERT_E U249 ( .A(n1658), .Z(n203) );
  INVERT_H U250 ( .A(n46), .Z(n1659) );
  INVERT_D U251 ( .A(n61), .Z(n1660) );
  INVERT_D U252 ( .A(n60), .Z(n1661) );
  NOR2_C U253 ( .A(n1659), .B(n1464), .Z(n1663) );
  NOR2_C U254 ( .A(n1660), .B(n1656), .Z(n1664) );
  NOR2_C U255 ( .A(n1661), .B(n1662), .Z(n1665) );
  NOR2_C U256 ( .A(n1665), .B(n1666), .Z(n1658) );
  NOR2_C U257 ( .A(n1663), .B(n1664), .Z(n1667) );
  INVERT_E U258 ( .A(n1667), .Z(n1666) );
  AO2222_F U259 ( .A1(n1633), .A2(n29), .B1(n1647), .B2(n1607), .C1(n1601), 
        .C2(n30), .D1(n1649), .D2(n1733), .Z(n61) );
  AO2222_F U260 ( .A1(n1670), .A2(n1634), .B1(n1646), .B2(n1735), .C1(n124), 
        .C2(n1601), .D1(n1631), .D2(n1605), .Z(n60) );
  AO222_F U261 ( .A1(n1729), .A2(n1448), .B1(n1726), .B2(n64), .C1(n1707), 
        .C2(n46), .Z(n98) );
  AO2222_F U262 ( .A1(n1634), .A2(n32), .B1(n1645), .B2(n1735), .C1(n110), 
        .C2(n1602), .D1(n1650), .D2(n1604), .Z(n64) );
  AO222_F U263 ( .A1(n1729), .A2(n1449), .B1(n1726), .B2(n78), .C1(n1708), 
        .C2(n46), .Z(n100) );
  AO2222_F U264 ( .A1(n1634), .A2(n31), .B1(n101), .B2(n1735), .C1(n1654), 
        .C2(n1602), .D1(n1651), .D2(n1605), .Z(n78) );
  INVERT_H U265 ( .A(n1455), .Z(n1668) );
  INVERT_H U266 ( .A(n1456), .Z(n1669) );
  AO22_F U267 ( .A1(n1737), .A2(n1561), .B1(n1720), .B2(write_data[2]), .Z(
        n235) );
  AO22_F U268 ( .A1(n1737), .A2(n171), .B1(n1720), .B2(write_data[3]), .Z(n200) );
  AO22_F U269 ( .A1(n1689), .A2(n195), .B1(n1640), .B2(write_data[4]), .Z(n199) );
  AO22_F U270 ( .A1(n1689), .A2(n1654), .B1(n1640), .B2(write_data[5]), .Z(
        n148) );
  AO22_F U271 ( .A1(n1689), .A2(n192), .B1(n1640), .B2(write_data[6]), .Z(n149) );
  AO22_F U272 ( .A1(n1697), .A2(n1645), .B1(n1641), .B2(write_data[3]), .Z(
        n130) );
  AO22_F U273 ( .A1(n1697), .A2(n1647), .B1(write_data[0]), .B2(n1642), .Z(
        n204) );
  AO22_F U274 ( .A1(n1697), .A2(n191), .B1(n1641), .B2(write_data[6]), .Z(n133) );
  AO22_F U275 ( .A1(n1695), .A2(n190), .B1(write_data[4]), .B2(n1642), .Z(n131) );
  AO22_F U276 ( .A1(n1693), .A2(n189), .B1(write_data[5]), .B2(n35), .Z(n1155)
         );
  AO22_F U277 ( .A1(n1693), .A2(n188), .B1(n1569), .B2(n35), .Z(n122) );
  AO22_F U278 ( .A1(n1693), .A2(n89), .B1(n1565), .B2(n35), .Z(n120) );
  AO22_F U279 ( .A1(n1693), .A2(n1553), .B1(n1567), .B2(n35), .Z(n121) );
  INVERT_M U280 ( .A(n1693), .Z(n35) );
  AO22_F U281 ( .A1(n1693), .A2(n97), .B1(write_data[4]), .B2(n35), .Z(n123)
         );
  AO22_F U282 ( .A1(n1693), .A2(n1555), .B1(n1571), .B2(n35), .Z(n125) );
  AO22_F U283 ( .A1(n1693), .A2(n1646), .B1(n1577), .B2(n35), .Z(n119) );
  AO22_F U284 ( .A1(n1693), .A2(n164), .B1(write_data[7]), .B2(n35), .Z(n126)
         );
  INVERT_N U285 ( .A(n1692), .Z(n1693) );
  AO22_F U286 ( .A1(n1736), .A2(n174), .B1(n1716), .B2(write_data[1]), .Z(n104) );
  AO22_F U287 ( .A1(n1736), .A2(n1668), .B1(n1716), .B2(write_data[2]), .Z(
        n105) );
  INVERT_H U288 ( .A(n1437), .Z(n1670) );
  INVERT_O U289 ( .A(n1671), .Z(read_data[2]) );
  INVERT_O U290 ( .A(n1673), .Z(read_data[6]) );
  INVERT_O U291 ( .A(n1675), .Z(read_data[4]) );
  INVERT_O U292 ( .A(n1677), .Z(read_data[1]) );
  INVERT_O U293 ( .A(n1679), .Z(read_data[7]) );
  INVERT_O U294 ( .A(n1706), .Z(read_data[0]) );
  INVERT_O U295 ( .A(n1682), .Z(read_data[3]) );
  INVERT_O U296 ( .A(n1684), .Z(read_data[5]) );
  INVERT_I U297 ( .A(n1686), .Z(n1687) );
  INVERT_H U298 ( .A(n1686), .Z(n1688) );
  INVERT_I U299 ( .A(n1686), .Z(n1689) );
  INVERT_I U300 ( .A(n71), .Z(n1690) );
  NAND3_E U301 ( .A(n1709), .B(n41), .C(write_addr[0]), .Z(n71) );
  INVERT_I U302 ( .A(n73), .Z(n1692) );
  NAND3_E U303 ( .A(n1714), .B(n41), .C(write_addr[0]), .Z(n73) );
  INVERT_J U304 ( .A(n62), .Z(n1694) );
  INVERT_I U305 ( .A(n1694), .Z(n1695) );
  INVERT_H U306 ( .A(n1694), .Z(n1696) );
  INVERT_I U307 ( .A(n1694), .Z(n1697) );
  INVERT_I U308 ( .A(read_addr[2]), .Z(n44) );
  INVERT_I U309 ( .A(read_addr[1]), .Z(n45) );
  INVERT_H U310 ( .A(n66), .Z(n1698) );
  INVERT_I U311 ( .A(n1698), .Z(n1699) );
  INVERT_I U312 ( .A(n1436), .Z(n1700) );
  NAND3_F U313 ( .A(write_addr[1]), .B(n1709), .C(write_addr[0]), .Z(n67) );
  INVERT_J U314 ( .A(n1144), .Z(n1706) );
  AND2_H U315 ( .A(write_addr[2]), .B(write_enable), .Z(n72) );
  BUFFER_J U316 ( .A(n33), .Z(n1716) );
  BUFFER_J U317 ( .A(n33), .Z(n1717) );
  BUFFER_J U318 ( .A(n33), .Z(n1718) );
  BUFFER_J U319 ( .A(n33), .Z(n1719) );
  AO22_F U320 ( .A1(n1736), .A2(n182), .B1(n1718), .B2(write_data[3]), .Z(n186) );
  AO22_F U321 ( .A1(n1736), .A2(n1669), .B1(n1717), .B2(write_data[6]), .Z(
        n109) );
  AO22_F U322 ( .A1(n1736), .A2(n1670), .B1(write_data[0]), .B2(n1719), .Z(
        n103) );
  AO22_F U323 ( .A1(n1736), .A2(n177), .B1(n1579), .B2(n1719), .Z(n107) );
  INVERT_K U324 ( .A(n1736), .Z(n33) );
  BUFFER_J U325 ( .A(n38), .Z(n1720) );
  BUFFER_J U326 ( .A(n38), .Z(n1721) );
  BUFFER_J U327 ( .A(n38), .Z(n1722) );
  BUFFER_J U328 ( .A(n38), .Z(n1723) );
  AO22_F U329 ( .A1(n1737), .A2(n90), .B1(n1722), .B2(write_data[1]), .Z(n136)
         );
  AO22_F U330 ( .A1(n1737), .A2(n1563), .B1(n1721), .B2(write_data[6]), .Z(
        n141) );
  AO22_F U331 ( .A1(n1737), .A2(n169), .B1(write_data[7]), .B2(n1723), .Z(n142) );
  AO22_F U332 ( .A1(n1737), .A2(n173), .B1(n1573), .B2(n1723), .Z(n140) );
  INVERT_K U333 ( .A(n1737), .Z(n38) );
  INVERT_N U334 ( .A(n1700), .Z(n1724) );
  INVERT_H U335 ( .A(n1727), .Z(n1725) );
  INVERT_L U336 ( .A(n1725), .Z(n1726) );
  CLK_I U337 ( .A(n49), .Z(n1727) );
  INVERT_H U338 ( .A(n47), .Z(n1728) );
  INVERT_L U339 ( .A(n1728), .Z(n1729) );
  AND2_I U340 ( .A(read_addr[0]), .B(read_enable), .Z(n47) );
  NOR2_E U341 ( .A(read_addr[1]), .B(read_addr[2]), .Z(n54) );
  NOR2_E U342 ( .A(n44), .B(read_addr[1]), .Z(n52) );
  INVERT_I U343 ( .A(write_rst_n), .Z(n1758) );
  INVERT_K U344 ( .A(n1758), .Z(n1756) );
  INVERT_I U345 ( .A(n1758), .Z(n1757) );
  INVERT_H U346 ( .A(write_addr[0]), .Z(n42) );
  INVERT_H U347 ( .A(n81), .Z(n32) );
  INVERT_H U348 ( .A(n82), .Z(n31) );
  INVERT_H U349 ( .A(n80), .Z(n29) );
  INVERT_H U350 ( .A(n79), .Z(n30) );
  INVERT_J U351 ( .A(n1756), .Z(n1755) );
  INVERT_J U352 ( .A(n1756), .Z(n1754) );
  INVERT_J U353 ( .A(n1756), .Z(n1753) );
  INVERT_J U354 ( .A(n1757), .Z(n1752) );
  INVERT_I U355 ( .A(n1757), .Z(n1751) );
  INVERT_I U356 ( .A(read_rst_n), .Z(n1740) );
  INVERT_K U357 ( .A(n1755), .Z(n1741) );
  INVERT_K U358 ( .A(n1754), .Z(n1744) );
  INVERT_K U359 ( .A(n1755), .Z(n1742) );
  INVERT_K U360 ( .A(n1754), .Z(n1743) );
  INVERT_K U361 ( .A(n1753), .Z(n1746) );
  INVERT_K U362 ( .A(n1753), .Z(n1745) );
  INVERT_K U363 ( .A(n1752), .Z(n1748) );
  INVERT_K U364 ( .A(n1751), .Z(n1749) );
  INVERT_K U365 ( .A(n1752), .Z(n1747) );
  INVERT_I U366 ( .A(n1751), .Z(n1750) );
  INVERT_K U367 ( .A(n1740), .Z(n1738) );
  INVERT_I U368 ( .A(n1740), .Z(n1739) );
  NAND4_C U369 ( .A(n1741), .B(write_addr[0]), .C(n1714), .D(write_addr[1]), 
        .Z(n66) );
  INVERT_M U370 ( .A(read_enable), .Z(n46) );
  NOR2_F U371 ( .A(n44), .B(n45), .Z(n51) );
  CLK_Q U372 ( .A(n1699), .Z(n1736) );
  CLK_Q U373 ( .A(n67), .Z(n1737) );
endmodule


module write_control_logic ( write_clk, write_rst_n, write_enable_in, 
        read_addr_gray_sync, write_addr_gray, write_addr, write_enable_out, 
        fifo_full );
  input [3:0] read_addr_gray_sync;
  output [3:0] write_addr_gray;
  output [3:0] write_addr;
  input write_clk, write_rst_n, write_enable_in;
  output write_enable_out, fifo_full;
  wire   n39, N10, n42, n14, n19, n20, n16, n143, n1, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n15, n17, n18, n21, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, \write_addr[3] , n157, n159, n161,
         n163, n165, n166, n167;
  assign write_addr_gray[3] = \write_addr[3] ;
  assign write_addr[3] = \write_addr[3] ;

  DFFR_K \write_addr_reg[1]  ( .D(n153), .CLK(write_clk), .RN(n166), .Q(n144), 
        .QBAR(n18) );
  DFFR_K fifo_full_reg ( .D(N10), .CLK(write_clk), .RN(n166), .Q(n42), .QBAR(
        n14) );
  DFFR_K \write_addr_reg[0]  ( .D(n21), .CLK(write_clk), .RN(n166), .Q(n143)
         );
  DFFR_K \write_addr_reg[2]  ( .D(n150), .CLK(write_clk), .RN(n166), .Q(n39), 
        .QBAR(n165) );
  DFFR_K \write_addr_reg[3]  ( .D(n19), .CLK(write_clk), .RN(n166), .QBAR(n145) );
  AND4_F U6 ( .A(n5), .B(n6), .C(n7), .D(n8), .Z(N10) );
  XNOR2_C U10 ( .A(n151), .B(n150), .Z(n7) );
  XNOR2_C U11 ( .A(write_addr[2]), .B(n10), .Z(n20) );
  XNOR2_C U12 ( .A(n12), .B(n153), .Z(n6) );
  OA21_H U13 ( .A1(n13), .A2(write_addr[1]), .B(n10), .Z(n16) );
  INVERT_I U3 ( .A(n1), .Z(n161) );
  INVERT_H U4 ( .A(n155), .Z(n1) );
  XOR2_D U5 ( .A(write_addr[0]), .B(write_enable_out), .Z(n21) );
  INVERT_N U7 ( .A(n161), .Z(write_addr[1]) );
  INVERTBAL_J U8 ( .A(n42), .Z(n159) );
  XOR2_D U9 ( .A(n9), .B(\write_addr[3] ), .Z(n19) );
  NOR2_D U14 ( .A(n147), .B(n10), .Z(n9) );
  INVERT_H U15 ( .A(n165), .Z(n146) );
  INVERT_H U16 ( .A(n146), .Z(n147) );
  INVERT_H U17 ( .A(write_addr[0]), .Z(n148) );
  INVERT_N U18 ( .A(n163), .Z(write_addr[0]) );
  INVERT_H U19 ( .A(n20), .Z(n149) );
  INVERT_H U20 ( .A(n149), .Z(n150) );
  XNOR2_C U21 ( .A(read_addr_gray_sync[2]), .B(read_addr_gray_sync[3]), .Z(n11) );
  INVERT_H U22 ( .A(n11), .Z(n151) );
  XOR2_J U23 ( .A(read_addr_gray_sync[1]), .B(n151), .Z(n12) );
  INVERT_E U24 ( .A(n16), .Z(n152) );
  INVERT_H U25 ( .A(n152), .Z(n153) );
  NOR2_C U26 ( .A(n148), .B(n15), .Z(n13) );
  INVERT_I U27 ( .A(n15), .Z(write_enable_out) );
  NAND2_H U28 ( .A(write_enable_in), .B(n14), .Z(n15) );
  INVERT_H U29 ( .A(n18), .Z(n154) );
  INVERT_I U30 ( .A(n154), .Z(n155) );
  INVERT_I U31 ( .A(n145), .Z(\write_addr[3] ) );
  NAND3_F U32 ( .A(write_addr[0]), .B(n144), .C(write_enable_out), .Z(n10) );
  INVERT_H U33 ( .A(n39), .Z(n157) );
  INVERT_I U34 ( .A(n157), .Z(write_addr[2]) );
  INVERT_O U35 ( .A(n159), .Z(fifo_full) );
  INVERT_I U36 ( .A(n143), .Z(n163) );
  XOR2_B U37 ( .A(n12), .B(n17), .Z(n5) );
  XOR2_B U38 ( .A(read_addr_gray_sync[3]), .B(n19), .Z(n8) );
  XNOR2_B U39 ( .A(read_addr_gray_sync[0]), .B(n21), .Z(n17) );
  XOR2_B U40 ( .A(n155), .B(n148), .Z(write_addr_gray[0]) );
  XOR2_B U41 ( .A(n155), .B(n147), .Z(write_addr_gray[1]) );
  XOR2_B U42 ( .A(\write_addr[3] ), .B(write_addr[2]), .Z(write_addr_gray[2])
         );
  INVERT_K U43 ( .A(n167), .Z(n166) );
  INVERT_H U44 ( .A(write_rst_n), .Z(n167) );
endmodule


module read_control_logic ( read_clk, read_rst_n, read_enable_in, 
        write_addr_gray_sync, read_addr_gray, read_addr, read_enable_out, 
        fifo_empty );
  input [3:0] write_addr_gray_sync;
  output [3:0] read_addr_gray;
  output [3:0] read_addr;
  input read_clk, read_rst_n, read_enable_in;
  output read_enable_out, fifo_empty;
  wire   \read_addr_gray[3] , n37, n38, N8, n40, n24, n88, n125, n18, n19, n20,
         n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n21, n23, n25,
         n154, n155, n156, n157, n158, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n174, n176, n177, n178,
         n179, n180, n181, n183, n184, n185, n186, n187, n188;
  assign read_addr[3] = \read_addr_gray[3] ;
  assign read_addr_gray[3] = \read_addr_gray[3] ;

  DFFS_E fifo_empty_reg ( .D(N8), .CLK(read_clk), .S(n188), .Q(n40), .QBAR(n24) );
  AND4_F U6 ( .A(n8), .B(n155), .C(n10), .D(n11), .Z(N8) );
  XNOR2_C U15 ( .A(n162), .B(n12), .Z(n8) );
  XNOR2_C U17 ( .A(write_addr_gray_sync[2]), .B(write_addr_gray_sync[3]), .Z(
        n15) );
  DFFR_E \read_addr_reg[3]  ( .D(n160), .CLK(read_clk), .RN(n187), .Q(
        \read_addr_gray[3] ), .QBAR(n185) );
  DFFR_E \read_addr_reg[2]  ( .D(n20), .CLK(read_clk), .RN(n187), .Q(n37), 
        .QBAR(n88) );
  DFFR_E \read_addr_reg[1]  ( .D(n162), .CLK(read_clk), .RN(n187), .Q(n38), 
        .QBAR(n23) );
  DFFR_E \read_addr_reg[0]  ( .D(n25), .CLK(read_clk), .RN(n187), .Q(n125), 
        .QBAR(n18) );
  INVERT_D U3 ( .A(n16), .Z(n178) );
  INVERT_H U4 ( .A(n19), .Z(n161) );
  XNOR2_C U5 ( .A(n17), .B(n186), .Z(n154) );
  INVERT_E U7 ( .A(n169), .Z(n6) );
  NOR2_D U8 ( .A(n180), .B(n177), .Z(n17) );
  BUFFER_F U9 ( .A(n9), .Z(n155) );
  INVERT_F U10 ( .A(n176), .Z(n156) );
  INVERT_H U11 ( .A(n156), .Z(n157) );
  XNOR2_B U12 ( .A(n180), .B(\read_addr_gray[3] ), .Z(read_addr_gray[2]) );
  INVERT_J U13 ( .A(n179), .Z(n180) );
  INVERT_E U14 ( .A(n14), .Z(read_enable_out) );
  INVERT_H U16 ( .A(n125), .Z(n158) );
  INVERT_H U18 ( .A(n158), .Z(read_addr[0]) );
  INVERT_H U19 ( .A(n154), .Z(n160) );
  XOR2_D U20 ( .A(n180), .B(n177), .Z(n20) );
  AND2_H U21 ( .A(n21), .B(n6), .Z(n16) );
  NOR2_F U22 ( .A(n14), .B(n171), .Z(n21) );
  XNOR2_D U23 ( .A(n171), .B(read_enable_out), .Z(n25) );
  INVERT_H U24 ( .A(n161), .Z(n162) );
  INVERT_E U25 ( .A(n163), .Z(n19) );
  INVERT_H U26 ( .A(n177), .Z(n164) );
  INVERT_H U27 ( .A(n21), .Z(n165) );
  NOR2_C U28 ( .A(n164), .B(n169), .Z(n166) );
  NOR2_C U29 ( .A(n164), .B(n165), .Z(n167) );
  NOR2_C U30 ( .A(n166), .B(n167), .Z(n163) );
  INVERT_J U31 ( .A(n172), .Z(read_addr[2]) );
  INVERT_J U32 ( .A(n174), .Z(read_addr[1]) );
  NAND2_F U33 ( .A(read_enable_in), .B(n24), .Z(n14) );
  INVERT_H U34 ( .A(n23), .Z(n168) );
  INVERT_I U35 ( .A(n168), .Z(n169) );
  INVERT_H U36 ( .A(n18), .Z(n170) );
  INVERT_I U37 ( .A(n170), .Z(n171) );
  INVERT_H U38 ( .A(n37), .Z(n172) );
  INVERT_H U39 ( .A(n38), .Z(n174) );
  INVERT_E U40 ( .A(n178), .Z(n176) );
  INVERT_I U41 ( .A(n157), .Z(n177) );
  INVERT_H U42 ( .A(n88), .Z(n179) );
  INVERTBAL_J U43 ( .A(n40), .Z(n181) );
  INVERT_O U44 ( .A(n181), .Z(fifo_empty) );
  XOR2_B U45 ( .A(n12), .B(n13), .Z(n11) );
  INVERT_H U46 ( .A(n15), .Z(n183) );
  INVERT_H U47 ( .A(n183), .Z(n184) );
  XOR2_B U48 ( .A(n184), .B(n20), .Z(n10) );
  XNOR2_D U49 ( .A(write_addr_gray_sync[1]), .B(n184), .Z(n12) );
  INVERT_H U50 ( .A(n185), .Z(n186) );
  XNOR2_B U51 ( .A(write_addr_gray_sync[3]), .B(n160), .Z(n9) );
  XNOR2_B U52 ( .A(write_addr_gray_sync[0]), .B(n25), .Z(n13) );
  XOR2_B U53 ( .A(n169), .B(n171), .Z(read_addr_gray[0]) );
  XOR2_B U54 ( .A(n169), .B(n180), .Z(read_addr_gray[1]) );
  INVERT_I U55 ( .A(read_rst_n), .Z(n188) );
  INVERT_J U56 ( .A(n188), .Z(n187) );
endmodule


module flip_flop_synch_1 ( a_clk, a_rst_n, b_clk, b_rst_n, async_data, 
        sync_data );
  input [3:0] async_data;
  output [3:0] sync_data;
  input a_clk, a_rst_n, b_clk, b_rst_n;
  wire   n1, n3, n4, n5, n6;
  wire   [3:0] stage1;
  wire   [3:0] stage2;

  DFFR_H \stage2_reg[3]  ( .D(stage1[3]), .CLK(b_clk), .RN(n5), .Q(stage2[3])
         );
  DFFR_H \stage2_reg[2]  ( .D(stage1[2]), .CLK(b_clk), .RN(n5), .Q(stage2[2])
         );
  DFFR_H \stage2_reg[1]  ( .D(stage1[1]), .CLK(b_clk), .RN(n5), .Q(stage2[1])
         );
  DFFR_H \stage2_reg[0]  ( .D(stage1[0]), .CLK(b_clk), .RN(n5), .Q(stage2[0])
         );
  DFFR_H \sync_data_reg[2]  ( .D(stage2[2]), .CLK(b_clk), .RN(n5), .Q(
        sync_data[2]) );
  DFFR_H \sync_data_reg[1]  ( .D(stage2[1]), .CLK(b_clk), .RN(n5), .Q(
        sync_data[1]) );
  DFFR_H \sync_data_reg[0]  ( .D(stage2[0]), .CLK(b_clk), .RN(n5), .Q(
        sync_data[0]) );
  DFFR_E \stage1_reg[2]  ( .D(async_data[2]), .CLK(a_clk), .RN(n3), .Q(
        stage1[2]) );
  DFFR_E \stage1_reg[1]  ( .D(async_data[1]), .CLK(a_clk), .RN(n3), .Q(
        stage1[1]) );
  DFFR_E \stage1_reg[0]  ( .D(async_data[0]), .CLK(a_clk), .RN(n3), .Q(
        stage1[0]) );
  DFFR_E \stage1_reg[3]  ( .D(async_data[3]), .CLK(a_clk), .RN(n3), .Q(
        stage1[3]) );
  DFFR_K \sync_data_reg[3]  ( .D(stage2[3]), .CLK(b_clk), .RN(n5), .QBAR(n1)
         );
  INVERT_H U3 ( .A(n1), .Z(sync_data[3]) );
  INVERT_M U4 ( .A(n6), .Z(n5) );
  INVERT_I U5 ( .A(b_rst_n), .Z(n6) );
  INVERT_J U6 ( .A(n4), .Z(n3) );
  INVERT_H U7 ( .A(a_rst_n), .Z(n4) );
endmodule


module flip_flop_synch_0 ( a_clk, a_rst_n, b_clk, b_rst_n, async_data, 
        sync_data );
  input [3:0] async_data;
  output [3:0] sync_data;
  input a_clk, a_rst_n, b_clk, b_rst_n;
  wire   n1, n2, n3, n4;
  wire   [3:0] stage1;
  wire   [3:0] stage2;

  DFFR_H \stage1_reg[3]  ( .D(async_data[3]), .CLK(a_clk), .RN(n3), .Q(
        stage1[3]) );
  DFFR_H \stage1_reg[2]  ( .D(async_data[2]), .CLK(a_clk), .RN(n3), .Q(
        stage1[2]) );
  DFFR_H \stage1_reg[1]  ( .D(async_data[1]), .CLK(a_clk), .RN(n3), .Q(
        stage1[1]) );
  DFFR_H \stage1_reg[0]  ( .D(async_data[0]), .CLK(a_clk), .RN(n3), .Q(
        stage1[0]) );
  DFFR_E \sync_data_reg[2]  ( .D(stage2[2]), .CLK(b_clk), .RN(n1), .Q(
        sync_data[2]) );
  DFFR_E \sync_data_reg[1]  ( .D(stage2[1]), .CLK(b_clk), .RN(n1), .Q(
        sync_data[1]) );
  DFFR_E \sync_data_reg[0]  ( .D(stage2[0]), .CLK(b_clk), .RN(n1), .Q(
        sync_data[0]) );
  DFFR_E \stage2_reg[3]  ( .D(stage1[3]), .CLK(b_clk), .RN(n1), .Q(stage2[3])
         );
  DFFR_E \stage2_reg[2]  ( .D(stage1[2]), .CLK(b_clk), .RN(n1), .Q(stage2[2])
         );
  DFFR_E \stage2_reg[1]  ( .D(stage1[1]), .CLK(b_clk), .RN(n1), .Q(stage2[1])
         );
  DFFR_E \stage2_reg[0]  ( .D(stage1[0]), .CLK(b_clk), .RN(n1), .Q(stage2[0])
         );
  DFFR_E \sync_data_reg[3]  ( .D(stage2[3]), .CLK(b_clk), .RN(n1), .Q(
        sync_data[3]) );
  INVERT_M U3 ( .A(n2), .Z(n1) );
  INVERT_I U4 ( .A(b_rst_n), .Z(n2) );
  INVERT_J U5 ( .A(n4), .Z(n3) );
  INVERT_H U6 ( .A(a_rst_n), .Z(n4) );
endmodule


module cdc_fifo ( write_clk, write_rst_n, write_data, write_enable, read_clk, 
        read_rst_n, read_enable, read_data, fifo_full, fifo_empty );
  input [7:0] write_data;
  output [7:0] read_data;
  input write_clk, write_rst_n, write_enable, read_clk, read_rst_n,
         read_enable;
  output fifo_full, fifo_empty;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [3:0] write_addr;
  wire   [3:0] read_addr;
  wire   [3:0] write_addr_gray_sync_1;
  wire   [3:0] write_addr_gray;
  wire   [3:0] read_addr_gray_sync_1;
  wire   [3:0] read_addr_gray;

  fifo_memory mem ( .write_data({n21, n19, n17, n15, n13, n11, n9, n7}), 
        .write_addr(write_addr), .write_enable(n4), .write_clk(write_clk), 
        .write_rst_n(n26), .read_addr(read_addr), .read_enable(n2), .read_clk(
        read_clk), .read_rst_n(n23), .read_data(read_data) );
  write_control_logic wctrl ( .write_clk(write_clk), .write_rst_n(n26), 
        .write_enable_in(n5), .read_addr_gray_sync(write_addr_gray_sync_1), 
        .write_addr_gray(write_addr_gray), .write_addr(write_addr), 
        .fifo_full(fifo_full) );
  read_control_logic rctrl ( .read_clk(read_clk), .read_rst_n(n23), 
        .read_enable_in(n2), .write_addr_gray_sync(read_addr_gray_sync_1), 
        .read_addr_gray(read_addr_gray), .read_addr(read_addr), .fifo_empty(
        fifo_empty) );
  flip_flop_synch_1 sync_write ( .a_clk(read_clk), .a_rst_n(n22), .b_clk(
        write_clk), .b_rst_n(n25), .async_data(read_addr_gray), .sync_data(
        write_addr_gray_sync_1) );
  flip_flop_synch_0 sync_read ( .a_clk(write_clk), .a_rst_n(n25), .b_clk(
        read_clk), .b_rst_n(n22), .async_data(write_addr_gray), .sync_data(
        read_addr_gray_sync_1) );
  INVERT_H U1 ( .A(read_enable), .Z(n1) );
  INVERT_K U2 ( .A(n1), .Z(n2) );
  INVERT_H U3 ( .A(write_enable), .Z(n3) );
  INVERT_H U4 ( .A(n3), .Z(n4) );
  INVERT_F U5 ( .A(n3), .Z(n5) );
  INVERT_H U6 ( .A(write_data[0]), .Z(n6) );
  INVERT_L U7 ( .A(n6), .Z(n7) );
  INVERT_H U8 ( .A(write_data[1]), .Z(n8) );
  INVERT_L U9 ( .A(n8), .Z(n9) );
  INVERT_H U10 ( .A(write_data[2]), .Z(n10) );
  INVERT_L U11 ( .A(n10), .Z(n11) );
  INVERT_H U12 ( .A(write_data[3]), .Z(n12) );
  INVERT_L U13 ( .A(n12), .Z(n13) );
  INVERT_H U14 ( .A(write_data[4]), .Z(n14) );
  INVERT_L U15 ( .A(n14), .Z(n15) );
  INVERT_H U16 ( .A(write_data[5]), .Z(n16) );
  INVERT_L U17 ( .A(n16), .Z(n17) );
  INVERT_H U18 ( .A(write_data[6]), .Z(n18) );
  INVERT_L U19 ( .A(n18), .Z(n19) );
  INVERT_H U20 ( .A(write_data[7]), .Z(n20) );
  INVERT_L U21 ( .A(n20), .Z(n21) );
  INVERT_I U22 ( .A(n27), .Z(n26) );
  INVERT_I U23 ( .A(n24), .Z(n23) );
  INVERT_I U24 ( .A(write_rst_n), .Z(n27) );
  INVERT_I U25 ( .A(read_rst_n), .Z(n24) );
  INVERT_I U26 ( .A(n27), .Z(n25) );
  INVERT_I U27 ( .A(n24), .Z(n22) );
endmodule

