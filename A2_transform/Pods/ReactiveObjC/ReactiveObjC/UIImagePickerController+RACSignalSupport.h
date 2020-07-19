#import <UIKit/UIKit.h>
@class RACDelegateProxy;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UIImagePickerController (RACSignalSupport)
@property (nonatomic, strong, readonly) RACDelegateProxy *rac_delegateProxy;
- (RACSignal<NSDictionary *> *)rac_imageSelectedSignal;
@end
NS_ASSUME_NONNULL_END
