#import "BKMIHomeHeaderView.h"
@implementation BKMIHomeHeaderView
- (instancetype)initWithFrame:(CGRect)BKframe{
    if (self = [super initWithFrame:BKframe]) {
        self.BKpicImageView = [[UIImageView alloc] init];
        self.BKpicImageView.layer.cornerRadius = 8;
        self.BKpicImageView.layer.masksToBounds = YES;
        [self addSubview:self.BKpicImageView];
        self.BKpicImageView.sd_layout
        .leftSpaceToView(self, 10)
        .rightSpaceToView(self, 10)
        .topSpaceToView(self, 5)
        .bottomSpaceToView(self, 5);
    }
    return self;
}
@end
