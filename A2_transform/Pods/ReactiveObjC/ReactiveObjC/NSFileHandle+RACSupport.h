#import <Foundation/Foundation.h>
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSFileHandle (RACSupport)
- (RACSignal<NSData *> *)rac_readInBackground;
@end
NS_ASSUME_NONNULL_END
