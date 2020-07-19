#import <Foundation/Foundation.h>
@class RACTwoTuple<__covariant First, __covariant Second>;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSURLConnection (RACSupport)
+ (RACSignal<RACTwoTuple<NSURLResponse *, NSData *> *> *)rac_sendAsynchronousRequest:(NSURLRequest *)request;
@end
NS_ASSUME_NONNULL_END
