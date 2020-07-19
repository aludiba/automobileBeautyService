#import <Foundation/Foundation.h>
#import "RACScheduler.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACScheduler ()
- (void)performAsCurrentScheduler:(void (^)(void))block;
@end
NS_ASSUME_NONNULL_END
