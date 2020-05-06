//
//  BCDailyTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCDailyTableViewCell.h"
#import "BCDailyModel.h"
@interface BCDailyTableViewCell()
@property(nonatomic, strong)UILabel *BCDateLbl;
@property(nonatomic, strong)UILabel *BCContentLbl;
@property(nonatomic, strong)UIView *BCBackView;
@property(nonatomic, strong)UIView *BCLine;
@end
@implementation BCDailyTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BCDateLbl];
        [self.contentView addSubview:self.BCBackView];
        [self.BCBackView addSubview:self.BCContentLbl];
        [self.contentView addSubview:self.BCLine];
        
        [self.BCDateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(22);
        }];
        [self.BCBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCDateLbl.mas_bottom).offset(18);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.bottom.equalTo(self.BCContentLbl).offset(4);
        }];
        [self.BCContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCBackView).offset(4);
            make.leading.equalTo(self.BCBackView).offset(4);
            make.trailing.equalTo(self.BCBackView).offset(-4);
            make.height.mas_equalTo(BCHEIGHT);
        }];
        [self.BCLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCBackView.mas_bottom).offset(17);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setBCModel:(BCDailyModel *)BCModel{
    _BCModel = BCModel;
    self.BCDateLbl.text = [BCUIUtilities BCformattedTimeStringWithDate:_BCModel.BCDate format:@"yyyy-MM-dd"];
    self.BCContentLbl.text = _BCModel.BCContent;
    CGSize BCSize = [self.BCContentLbl sizeThatFits:CGSizeMake(BCWIDTH - 40, MAXFLOAT)];
    [self.BCContentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(BCSize.height);
    }];
    [self.BCContentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)BCDateLbl{
    if (!_BCDateLbl) {
        _BCDateLbl = [[UILabel alloc] init];
        _BCDateLbl.textColor = [UIColor blueColor];
        _BCDateLbl.font = [UIFont systemFontOfSize:20];
    }
    return _BCDateLbl;
}
- (UIView *)BCBackView{
    if (!_BCBackView) {
        _BCBackView = [[UIView alloc] init];
        _BCBackView.backgroundColor = BCH_Color(242, 242, 242, 1);
    }
    return _BCBackView;
}
- (UILabel *)BCContentLbl{
    if (!_BCContentLbl) {
        _BCContentLbl = [[UILabel alloc] init];
        _BCContentLbl.layer.cornerRadius = 8.0f;
        _BCContentLbl.layer.masksToBounds = YES;
        _BCContentLbl.textColor = [UIColor blackColor];
        _BCContentLbl.font = [UIFont systemFontOfSize:18];
        _BCContentLbl.numberOfLines = 0;
        [_BCContentLbl sizeToFit];
    }
    return _BCContentLbl;
}
- (UIView *)BCLine{
    if (!_BCLine) {
        _BCLine = [[UIView alloc] init];
        _BCLine.backgroundColor = BCH_Color(242, 242, 242, 1);
    }
    return _BCLine;
}
@end
