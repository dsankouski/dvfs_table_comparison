# Source: https://github.com/LineageOS/android_kernel_samsung_universal8890
# Branch: lineage-15.1
# arch/arm64/boot/dts/exynos8890.dtsi:456
s7_freq = [1898000 ,
1794000 ,
1690000 ,
1586000 ,
1482000 ,
1378000 ,
1274000  ,
1170000  ,
1066000  ,
962000  ,
858000  ,
754000  ,
650000  ,
546000  ,
442000  ,
338000  ,
234000  ,
130000
]

s7_volt = [
1100000        ,
1100000        ,
1100000        ,
1162500  ,
1100000  ,
1037500  ,
987500  ,
937500   ,
887500   ,
850000   ,
812500   ,
781250   ,
750000   ,
718750   ,
681250	     ,
650000	     ,
643750	     ,
643750
]

# Source: https://github.com/LineageOS/android_kernel_samsung_universal7880
# Branch: cm-14.1, lineage-16.0
#  arch/arm64/boot/dts/exynos7880.dtsi
a5_freq = [
1872000  ,
1794000  ,
1690000  ,
1586000  ,
1482000  ,
1352000   ,
1241500   ,
1144000   ,
1014000   ,
962000   ,
845000   ,
756600   ,
676000   ,
546000   ,
448500   ,
344500
]

a5_volt = [
1200000	,
1100000	,
1100000	,
1100000	,
1100000	,
900000	,
900000	,
900000	,
800000	,
800000	,
800000	,
800000	,
800000	,
800000	,
800000	     ,
700000
]

# Source https://github.com/abdoi94/android_kernel_c7lte
# Branch master
#  arch/arm/boot/dts/qcom/msm8953-regulator.dtsi
msm8953_freq = [
652800,
1036800,
1401600,
1689600,
1843200,
1958400,
2016000,
2150400,
2208000,
]

msm8953_volt = [
715000  ,
790000 ,
860000 ,
865000 ,
920000, 
990000 ,
1065000 ,
1065000 ,
1065000
]

figure(1, 'position', [0,0, 1000, 1000]);
plot(
  a5_freq, a5_volt,
  s7_freq, s7_volt,
  msm8953_freq, msm8953_volt
);
title('CPU freq vs power voltage');
legend('a5y17lte exynos 7880 - 14nm 01/01/2017','s7 - exynos 8890 - 14nm - 03/01/2016', 'samsung c7 - msm8953 - 14nm 11/02/2016');
xlabel('Frequency, Khz');
ylabel('Voltage, uV');
