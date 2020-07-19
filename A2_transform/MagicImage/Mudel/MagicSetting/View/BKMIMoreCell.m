#import "BKMIMoreCell.h"
@interface BKMIMoreCell ()
@end
@implementation BKMIMoreCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.BKtitleLabel = [[UILabel alloc] init];
        self.BKtitleLabel.font = FontSize(16, ScreenWidth);
        self.BKtitleLabel.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.BKtitleLabel];
        self.BKtitleLabel.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .centerYEqualToView(self.contentView)
        .autoHeightRatio(0);
        [self.BKtitleLabel setSingleLineAutoResizeWithMaxWidth:180];
        UIImageView *BKarrowView = [[UIImageView alloc] initWithImage:PEImage(@"PEArrow")];
        [self.contentView addSubview:BKarrowView];
        BKarrowView.sd_layout
        .rightSpaceToView(self.contentView, 15)
        .centerYEqualToView(self.contentView)
        .widthEqualToHeight()
        .heightIs(20);
    }
    return self;
}
@end
