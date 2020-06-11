//
//  JBHomeTableViewCell.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/11.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHomeTableViewCell.h"
#import "JBLifeModel.h"

@interface JBHomeTableViewCell()
@property(nonatomic, strong)UILabel *JBTitleLbl;
@property(nonatomic, strong)UILabel *JBContentLbl;
@end
@implementation JBHomeTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self JBSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)JBSetContentView{
    [self.contentView addSubview:self.JBTitleLbl];
    [self.contentView addSubview:self.JBContentLbl];
    
    [self.JBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(12);
        make.leading.equalTo(self.contentView).offset(16);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(16);
    }];
    [self.JBContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBTitleLbl.mas_bottom).offset(15);
        make.leading.equalTo(self.contentView).offset(16);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(20);
        make.bottom.equalTo(self.contentView).offset(-12);
    }];
}
- (void)setJBlifemodel:(JBLifeModel *)JBlifemodel{
    _JBlifemodel = JBlifemodel;
    self.JBTitleLbl.text = _JBlifemodel.JBTitle;
    self.JBContentLbl.text = _JBlifemodel.JBContent;
}
#pragma mark - 属性懒加载
- (UILabel *)JBTitleLbl{
    if (!_JBTitleLbl) {
        _JBTitleLbl = [[UILabel alloc] init];
        _JBTitleLbl.textColor = [UIColor systemBlueColor];
        _JBTitleLbl.font = [UIFont systemFontOfSize:15];
        [_JBTitleLbl sizeToFit];
    }
    return _JBTitleLbl;
}
- (UILabel *)JBContentLbl{
    if (!_JBContentLbl) {
        _JBContentLbl = [[UILabel alloc] init];
        _JBContentLbl.textColor = [UIColor purpleColor];
        _JBContentLbl.font = [UIFont systemFontOfSize:18];
        [_JBContentLbl sizeToFit];
    }
    return _JBContentLbl;
}
@end
