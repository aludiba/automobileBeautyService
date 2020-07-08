//
//  LBFeedbackTableViewCell.m
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBFeedbackTableViewCell.h"
#import "LBFeedbackModel.h"
@interface LBFeedbackTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UILabel *LBtitleLbl;
@property(nonatomic, strong)UITextView *LBtextViw;
@end
@implementation LBFeedbackTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBsetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)LBsetContentView{
    [self.contentView addSubview:self.LBtitleLbl];
    [self.contentView addSubview:self.LBtextViw];
    
    [self.LBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.LBtextViw mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.LBtitleLbl.mas_bottom).offset(20);
        make.height.mas_equalTo(200);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
}
- (void)setLBfeedbackmodel:(LBFeedbackModel *)LBfeedbackmodel{
    _LBfeedbackmodel = LBfeedbackmodel;
    if (_LBfeedbackmodel.LBFeedback) {
        self.LBtitleLbl.text = _LBfeedbackmodel.LBFeedback;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)LBtitleLbl{
    if (!_LBtitleLbl) {
        _LBtitleLbl = [[UILabel alloc] init];
        _LBtitleLbl.textColor = [UIColor blackColor];
        _LBtextViw.font = [UIFont systemFontOfSize:18];
    }
    return _LBtitleLbl;
}
- (UITextView *)LBtextViw{
    if (!_LBtextViw) {
        _LBtextViw = [[UITextView alloc] init];
        _LBtextViw.delegate = self;
        _LBtextViw.textColor = [UIColor blackColor];
        _LBtextViw.font = [UIFont systemFontOfSize:20];
        _LBtextViw.backgroundColor = LBH_Color(242, 242, 242, 1);
        _LBtextViw.layer.cornerRadius = 4.0f;
        _LBtextViw.layer.masksToBounds = YES;
    }
    return _LBtextViw;
}
@end
