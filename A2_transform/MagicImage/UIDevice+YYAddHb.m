#import "UIDevice+YYAddHb.h"
@implementation UIDevice (YYAddHb)
+ (BOOL)systemVersionHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)isPadHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)isSimulatorHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)isJailbrokenHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)canMakePhoneCallsHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)ipAddressWithIfaNameHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)ipAddressWIFIHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)ipAddressCellHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)getNetworkTrafficBytesHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)machineModelHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)machineModelNameHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)systemUptimeHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)diskSpaceHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)diskSpaceFreeHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)diskSpaceUsedHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)memoryTotalHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)memoryUsedHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)memoryFreeHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)memoryActiveHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)memoryInactiveHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)memoryWiredHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)memoryPurgableHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)cpuCountHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)cpuUsageHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)cpuUsagePerProcessorHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)+ CPU_STATE_SYSTEM] - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_SYSTEM])
                          + (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE]   - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE])
                          )Hb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
