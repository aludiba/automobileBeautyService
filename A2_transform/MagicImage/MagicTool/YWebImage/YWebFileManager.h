#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void(^YWebManagerDeleteFileBlock)(NSString * fileName);
typedef void(^YWebManagerCompleteBlock)(void);
NS_CLASS_AVAILABLE_IOS(7_0) @interface YWebFileManager : NSObject
@property (nonatomic, copy, readonly)NSString * fileSize;
+ (instancetype)shareInstance NS_AVAILABLE_IOS(7_0);
- (BOOL)fileIsExist:(NSString *)url NS_AVAILABLE_IOS(7_0);
-(BOOL)createDownFileWithFolder:(NSString *)folder;
- (UIImage *)imageWithURL:(NSString *)url NS_AVAILABLE_IOS(7_0);
- (BOOL)deleteAllCaches NS_AVAILABLE_IOS(7_0);
-(BOOL)deleteAllCAchesWithFolder:(NSString *)folder Progress:(YWebManagerDeleteFileBlock)deleteProgressBlockHandle
                        Complete:(YWebManagerCompleteBlock)completeBlockHandle;
@property (nonatomic, copy) NSString * folder;
@end
