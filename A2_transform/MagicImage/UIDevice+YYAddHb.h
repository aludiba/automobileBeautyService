#import <UIKit/UIKit.h>
#import "UIDevice+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSString+YYAdd.h"

@interface UIDevice (YYAddHb)
+ (BOOL)systemVersionHb:(NSInteger)hb;
+ (BOOL)isPadHb:(NSInteger)hb;
+ (BOOL)isSimulatorHb:(NSInteger)hb;
+ (BOOL)isJailbrokenHb:(NSInteger)hb;
+ (BOOL)canMakePhoneCallsHb:(NSInteger)hb;
+ (BOOL)ipAddressWithIfaNameHb:(NSInteger)hb;
+ (BOOL)ipAddressWIFIHb:(NSInteger)hb;
+ (BOOL)ipAddressCellHb:(NSInteger)hb;
+ (BOOL)getNetworkTrafficBytesHb:(NSInteger)hb;
+ (BOOL)machineModelHb:(NSInteger)hb;
+ (BOOL)machineModelNameHb:(NSInteger)hb;
+ (BOOL)systemUptimeHb:(NSInteger)hb;
+ (BOOL)diskSpaceHb:(NSInteger)hb;
+ (BOOL)diskSpaceFreeHb:(NSInteger)hb;
+ (BOOL)diskSpaceUsedHb:(NSInteger)hb;
+ (BOOL)memoryTotalHb:(NSInteger)hb;
+ (BOOL)memoryUsedHb:(NSInteger)hb;
+ (BOOL)memoryFreeHb:(NSInteger)hb;
+ (BOOL)memoryActiveHb:(NSInteger)hb;
+ (BOOL)memoryInactiveHb:(NSInteger)hb;
+ (BOOL)memoryWiredHb:(NSInteger)hb;
+ (BOOL)memoryPurgableHb:(NSInteger)hb;
+ (BOOL)cpuCountHb:(NSInteger)hb;
+ (BOOL)cpuUsageHb:(NSInteger)hb;
+ (BOOL)cpuUsagePerProcessorHb:(NSInteger)hb;
+ (BOOL)+ CPU_STATE_SYSTEM] - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_SYSTEM])
                          + (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE]   - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE])
                          )Hb:(NSInteger)hb;

@end
