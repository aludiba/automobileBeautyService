#import <UIKit/UIKit.h>
#import "UIApplication+YYAdd.h"
#import "NSArray+YYAdd.h"
#import "NSObject+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIDevice+YYAdd.h"
#import <sys/sysctl.h>
#import <mach/mach.h>
#import <objc/runtime.h>

@interface UIApplication (YYAddHb)
+ (BOOL)documentsURLHb:(NSInteger)hb;
+ (BOOL)documentsPathHb:(NSInteger)hb;
+ (BOOL)cachesURLHb:(NSInteger)hb;
+ (BOOL)cachesPathHb:(NSInteger)hb;
+ (BOOL)libraryURLHb:(NSInteger)hb;
+ (BOOL)libraryPathHb:(NSInteger)hb;
+ (BOOL)isPiratedHb:(NSInteger)hb;
+ (BOOL)_yy_fileExistInMainBundleHb:(NSInteger)hb;
+ (BOOL)appBundleNameHb:(NSInteger)hb;
+ (BOOL)appBundleIDHb:(NSInteger)hb;
+ (BOOL)appVersionHb:(NSInteger)hb;
+ (BOOL)appBuildVersionHb:(NSInteger)hb;
+ (BOOL)isBeingDebuggedHb:(NSInteger)hb;
+ (BOOL)memoryUsageHb:(NSInteger)hb;
+ (BOOL)cpuUsageHb:(NSInteger)hb;
+ (BOOL)_delaySetActivityHb:(NSInteger)hb;
+ (BOOL)_changeNetworkActivityCountHb:(NSInteger)hb;
+ (BOOL)incrementNetworkActivityCountHb:(NSInteger)hb;
+ (BOOL)decrementNetworkActivityCountHb:(NSInteger)hb;
+ (BOOL)isAppExtensionHb:(NSInteger)hb;
+ (BOOL)sharedExtensionApplicationHb:(NSInteger)hb;

@end
