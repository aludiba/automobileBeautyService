#import <Foundation/Foundation.h>
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
extern NSString * const RACCommandErrorDomain;
extern const NSInteger RACCommandErrorNotEnabled;
extern NSString * const RACUnderlyingCommandErrorKey;
@interface RACCommand<__contravariant InputType, __covariant ValueType> : NSObject
@property (nonatomic, strong, readonly) RACSignal<RACSignal<ValueType> *> *executionSignals;
@property (nonatomic, strong, readonly) RACSignal<NSNumber *> *executing;
@property (nonatomic, strong, readonly) RACSignal<NSNumber *> *enabled;
@property (nonatomic, strong, readonly) RACSignal<NSError *> *errors;
@property (atomic, assign) BOOL allowsConcurrentExecution;
- (instancetype)initWithSignalBlock:(RACSignal<ValueType> * (^)(InputType _Nullable input))signalBlock;
- (instancetype)initWithEnabled:(nullable RACSignal<NSNumber *> *)enabledSignal signalBlock:(RACSignal<ValueType> * (^)(InputType _Nullable input))signalBlock;
- (RACSignal<ValueType> *)execute:(nullable InputType)input;
@end
NS_ASSUME_NONNULL_END
