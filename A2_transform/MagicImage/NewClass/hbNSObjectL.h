#import <Foundation/Foundation.h>
@interface hbNSObjectL: NSObject
+ (BOOL)RarcDebugRetain:(NSInteger)hb;
+ (BOOL)FarcDebugRelease:(NSInteger)hb;
+ (BOOL)DarcDebugAutorelease:(NSInteger)hb;
+ (BOOL)VarcDebugRetainCount:(NSInteger)hb;

@end
