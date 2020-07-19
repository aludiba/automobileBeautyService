#import <UIKit/UIKit.h>
#import "UIDevice+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "NSString+YYAdd.h"
#import "UIDevice+YYAddBm.h"

@interface UIDevice (YYAddBmHb)
+ (BOOL)systemVersionBmHb:(NSInteger)hb;
+ (BOOL)isPadBmHb:(NSInteger)hb;
+ (BOOL)isSimulatorBmHb:(NSInteger)hb;
+ (BOOL)isJailbrokenBmHb:(NSInteger)hb;
+ (BOOL)canMakePhoneCallsBmHb:(NSInteger)hb;
+ (BOOL)ipAddressWithIfaNameBmHb:(NSInteger)hb;
+ (BOOL)ipAddressWIFIBmHb:(NSInteger)hb;
+ (BOOL)ipAddressCellBmHb:(NSInteger)hb;
+ (BOOL)getNetworkTrafficBytesBmHb:(NSInteger)hb;
+ (BOOL)machineModelBmHb:(NSInteger)hb;
+ (BOOL)machineModelNameBmHb:(NSInteger)hb;
+ (BOOL)systemUptimeBmHb:(NSInteger)hb;
+ (BOOL)diskSpaceBmHb:(NSInteger)hb;
+ (BOOL)diskSpaceFreeBmHb:(NSInteger)hb;
+ (BOOL)diskSpaceUsedBmHb:(NSInteger)hb;
+ (BOOL)memoryTotalBmHb:(NSInteger)hb;
+ (BOOL)memoryUsedBmHb:(NSInteger)hb;
+ (BOOL)memoryFreeBmHb:(NSInteger)hb;
+ (BOOL)memoryActiveBmHb:(NSInteger)hb;
+ (BOOL)memoryInactiveBmHb:(NSInteger)hb;
+ (BOOL)memoryWiredBmHb:(NSInteger)hb;
+ (BOOL)memoryPurgableBmHb:(NSInteger)hb;
+ (BOOL)cpuCountBmHb:(NSInteger)hb;
+ (BOOL)cpuUsageBmHb:(NSInteger)hb;
+ (BOOL)cpuUsagePerProcessorBmHb:(NSInteger)hb;
+ (BOOL)BmHb:(NSInteger)hb;

@end
