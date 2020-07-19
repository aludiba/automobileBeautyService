#import <Foundation/Foundation.h>
@interface RACKVOProxy : NSObject
+ (instancetype)sharedProxy;
- (void)addObserver:(__weak NSObject *)observer forContext:(void *)context;
- (void)removeObserver:(NSObject *)observer forContext:(void *)context;
@end
