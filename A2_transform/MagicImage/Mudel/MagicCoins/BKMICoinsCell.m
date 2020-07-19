#import "BKMICoinsCell.h"
#import "BKMICoinsModel.h"
@interface BKMICoinsCell ()
@property (nonatomic, strong) UILabel * BKcoinsLabel;
@property (nonatomic, strong) UILabel * BKnumberLabel;
@end
@implementation BKMICoinsCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UIView * BKbgView = [[UIView alloc] init];
        BKbgView.layer.cornerRadius = 10;
        BKbgView.layer.masksToBounds = YES;
        BKbgView.backgroundColor = UIColor.whiteColor;
        [self.contentView addSubview:BKbgView];
        BKbgView.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 10)
        .topSpaceToView(self.contentView, 5)
        .bottomSpaceToView(self.contentView, 5);
        UIImageView * BKimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"yb"]];
        [BKbgView addSubview:BKimageView];
        BKimageView.sd_layout
        .leftSpaceToView(BKbgView, 10)
        .centerYEqualToView(BKbgView)
        .heightIs(25)
        .widthIs(25);
        self.BKcoinsLabel = [[UILabel alloc] init];
        self.BKcoinsLabel.font = [UIFont systemFontOfSize:14];
        self.BKcoinsLabel.textColor = [UIColor blackColor];
        [BKbgView addSubview:self.BKcoinsLabel];
        self.BKcoinsLabel.sd_layout
        .leftSpaceToView(BKimageView, 5)
        .centerYEqualToView(BKimageView)
        .autoHeightRatio(0);
        [self.BKcoinsLabel setSingleLineAutoResizeWithMaxWidth:180];
        self.BKnumberLabel = [[UILabel alloc] init];
        self.BKnumberLabel.textColor = [UIColor orangeColor];
        self.BKnumberLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.BKnumberLabel];
        self.BKnumberLabel.sd_layout
        .rightSpaceToView(BKbgView, 10)
        .centerYEqualToView(BKbgView)
        .autoHeightRatio(0);
        [self.BKnumberLabel setSingleLineAutoResizeWithMaxWidth:180];
    }
    return self;
}
- (void)setBKmodel:(BKMICoinsModel *)BKmodel{
    BKmodel = BKmodel;
    self.BKnumberLabel.text = [NSString stringWithFormat:@"$%@",BKmodel.goods_price];
    self.BKcoinsLabel.text = [NSString stringWithFormat:@"X %ld",BKmodel.goods_num];
}
@end
