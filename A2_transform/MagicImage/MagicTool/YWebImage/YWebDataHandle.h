#import <Foundation/Foundation.h>
NS_AVAILABLE_IOS(7_0) @interface YWebDataHandle : NSObject
+ (NSString *)imageNameForBase64Handle:(NSString *)path NS_DEPRECATED_IOS(7.0, 9.0,"Use - stringForBase64Handle: instead.");
+ (NSString *)stringForBase64Handle:(NSString *)path NS_AVAILABLE_IOS(9_0);
+ (NSString *)documentPath NS_AVAILABLE_IOS(7_0);
+ (NSString *)documentAppendPath:(NSString *)fileName NS_AVAILABLE_IOS(7_0);
+ (NSString *)documentAppendPaths:(NSArray <NSString *> *)fileNames NS_AVAILABLE_IOS(7_0);
+(NSString *)documentYWebImageFileWithFolder:(NSString * )folder;
+(NSString *)documentYWebImageFileAppendWithFolder:(NSString *)folder withFile:(NSString *)fileName;
+ (NSString *)documentYWebImageFileAppendBase64File:(NSString *)fileName NS_AVAILABLE_IOS(7_0);
@end
