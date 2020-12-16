//
//  MPRecentProjectsView.h
//  magicPicsew
//
//  Created by 123 on 2020/12/1.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol MPRecentProjectsViewDelegate <NSObject>

- (void)MPCurrentAlbumTitle:(NSString *)MPAlbumTitle;

@end
@interface MPRecentProjectsView : UIView

@property (nonatomic, weak) id<MPRecentProjectsViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
