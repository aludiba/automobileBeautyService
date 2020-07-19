#import "BKMIFilterCell.h"
#import "BKMIHomeModel.h"
@interface BKMIFilterCell ()
@property (nonatomic, strong) UIImageView * BKbgImageView;
@property (nonatomic, strong) UILabel * BKtitleLabel;
@end
@implementation BKMIFilterCell
- (instancetype)initWithStyle:(UITableViewCellStyle)BKstyle reuseIdentifier:(NSString *)BKreuseIdentifier{
    if (self = [super initWithStyle:BKstyle reuseIdentifier:BKreuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.BKbgImageView = [[UIImageView alloc] init];
        self.BKbgImageView.layer.cornerRadius = 10;
        self.BKbgImageView.layer.masksToBounds = YES;
        [self.contentView addSubview:self.BKbgImageView];
        self.BKbgImageView.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .topSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 15)
        .bottomSpaceToView(self.contentView, 30);
        self.BKtitleLabel = [[UILabel alloc] init];
        self.BKtitleLabel.font = FontBoldSize(16, ScreenWidth);
        self.BKtitleLabel.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.BKtitleLabel];
        self.BKtitleLabel.sd_layout
        .leftEqualToView(self.BKbgImageView)
        .topSpaceToView(self.BKbgImageView, 5)
        .autoHeightRatio(0);
        [self.BKtitleLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth];
    }
    return self;
}
- (void)setBKmodel:(BKMIHomeModel *)BKmodel{
    _BKmodel = BKmodel;
    [self.BKbgImageView sd_setImageWithURL:[NSURL URLWithString:BKmodel.pic_url_z]];
    self.BKtitleLabel.text = BKmodel.title;
}
@end
