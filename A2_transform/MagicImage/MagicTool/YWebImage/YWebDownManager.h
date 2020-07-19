#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void(^DownManagerFinishBlock)(NSString * path);
typedef void(^DownManagerProgressBlock)(CGFloat didFinish,CGFloat didFinishTotal,CGFloat Total);
NS_CLASS_AVAILABLE_IOS(7_0) @interface YWebDownManager : NSObject
- (void)startDownImagePath:(NSString *)imagePath NS_AVAILABLE_IOS(7_0);
- (void)startDownImageURL:(NSURL *)imageURL NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy) NSString * folder;
- (void)downManagerFinishBlockHandle:(DownManagerFinishBlock)downManagerFinishBlockHandle;
- (void)downManagerProgressBlockHandle:(DownManagerProgressBlock)downManagerProgressBlockHandle;
@end
