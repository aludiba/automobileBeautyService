#import <Foundation/Foundation.h>
@class RACScheduler;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSString (RACSupport)
+ (RACSignal<NSString *> *)rac_readContentsOfURL:(NSURL *)URL usedEncoding:(NSStringEncoding *)encoding scheduler:(RACScheduler *)scheduler;
@end
NS_ASSUME_NONNULL_END
