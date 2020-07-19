#import <Foundation/Foundation.h>
@class RACCompoundDisposable;
@class RACDisposable;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSObject (RACDeallocating)
@property (atomic, readonly, strong) RACCompoundDisposable *rac_deallocDisposable;
- (RACSignal *)rac_willDeallocSignal;
@end
NS_ASSUME_NONNULL_END
