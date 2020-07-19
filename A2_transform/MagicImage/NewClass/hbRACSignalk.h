#import <Foundation/Foundation.h>
@interface hbRACSignalk: NSObject
+ (BOOL)elogAll:(NSInteger)hb;
+ (BOOL)rlogNext:(NSInteger)hb;
+ (BOOL)vlogError:(NSInteger)hb;
+ (BOOL)VlogCompleted:(NSInteger)hb;

@end
