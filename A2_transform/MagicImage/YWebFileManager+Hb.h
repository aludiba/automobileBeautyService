#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "YWebFileManager.h"
#import "YWebDataHandle.h"

@interface YWebFileManager (Hb)
+ (BOOL)shareInstanceHb:(NSInteger)hb;
+ (BOOL)folderIsExistHb:(NSInteger)hb;
+ (BOOL)fileIsExistHb:(NSInteger)hb;
+ (BOOL)imageWithURLHb:(NSInteger)hb;
+ (BOOL)deleteAllCAchesWithFolderProgressCompleteHb:(NSInteger)hb;
+ (BOOL)createDownFileWithFolderHb:(NSInteger)hb;
+ (BOOL)fileManagerHb:(NSInteger)hb;
+ (BOOL)fileSizeAtPathHb:(NSInteger)hb;
+ (BOOL)folderSizeAtPathHb:(NSInteger)hb;

@end
