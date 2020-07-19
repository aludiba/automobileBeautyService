#import "UIDevice+YYAddBmHb.h"
@implementation UIDevice (YYAddBmHb)
+ (BOOL)systemVersionBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)isPadBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)isSimulatorBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)isJailbrokenBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)canMakePhoneCallsBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)ipAddressWithIfaNameBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)ipAddressWIFIBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)ipAddressCellBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)getNetworkTrafficBytesBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)machineModelBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)machineModelNameBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)systemUptimeBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)diskSpaceBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)diskSpaceFreeBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)diskSpaceUsedBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)memoryTotalBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)memoryUsedBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)memoryFreeBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)memoryActiveBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)memoryInactiveBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)memoryWiredBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)memoryPurgableBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)cpuCountBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)cpuUsageBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)cpuUsagePerProcessorBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)BmHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
