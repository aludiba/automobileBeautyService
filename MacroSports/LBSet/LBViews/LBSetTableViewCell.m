//
//  LBSetTableViewCell.m
//  MacroSports
//
//  Created by 褚红彪 on 2020/7/6.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBSetTableViewCell.h"
#import "LBSetViewModel.h"
@interface LBSetTableViewCell()
@property(nonatomic, strong)UILabel *LBTitleLbl;
@property(nonatomic, strong)UIImageView *LBArrowImgView;
@property(nonatomic, strong)UIView *LBLine;
@end
@implementation LBSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)LBSetContentView{
    [self.contentView addSubview:self.LBTitleLbl];
    [self.contentView addSubview:self.LBArrowImgView];
    [self.contentView addSubview:self.LBLine];
    
    [self.LBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(20);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.LBArrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-16);
        make.centerY.equalTo(self.contentView);
        make.width.mas_equalTo(22);
        make.height.mas_equalTo(22);
    }];
    [self.LBLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(1);
        make.bottom.equalTo(self.contentView);
    }];
}
- (void)setLBsetviewmodel:(LBSetViewModel *)LBsetviewmodel{
    _LBsetviewmodel = LBsetviewmodel;
    self.LBTitleLbl.text = _LBsetviewmodel.LBtitle;
}
#pragma mark - 属性懒加载
- (UILabel *)LBTitleLbl{
    if (!_LBTitleLbl) {
        _LBTitleLbl = [[UILabel alloc] init];
        _LBTitleLbl.textColor = [UIColor blackColor];
        _LBTitleLbl.font = [UIFont systemFontOfSize:18];
    }
    return _LBTitleLbl;
}
- (UIImageView *)LBArrowImgView{
    if (!_LBArrowImgView) {
        _LBArrowImgView = [[UIImageView alloc] init];
        _LBArrowImgView.image = [UIImage imageNamed:@"LBSet_youjiantou"];
    }
    return _LBArrowImgView;
}
- (UIView *)LBLine{
    if (!_LBLine) {
        _LBLine = [[UIView alloc] init];
        _LBLine.backgroundColor = LBH_Color(242, 242, 242, 1);
    }
    return _LBLine;
}
@end
