//
//  BGproblemFeedbackTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGproblemFeedbackTableViewCell.h"
#import "BGCargoAddViewModel.h"

@interface BGproblemFeedbackTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *BGeditableView;
@property(nonatomic, strong)UILabel *BGtitleLbl;
@property(nonatomic, strong)UILabel *BGhiddenLbl;
//@property(nonatomic, strong)UIView *BGline;
@end
@implementation BGproblemFeedbackTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BGtitleLbl];
        [self.contentView addSubview:self.BGeditableView];
        [self.BGeditableView addSubview:self.BGhiddenLbl];
//        [self.contentView addSubview:self.BGline];
        
        [self.BGtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.BGeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGtitleLbl.mas_bottom).offset(15);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(110);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-12.5);
        }];
        [self.BGhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGeditableView).offset(6);
            
            make.leading.equalTo(self.BGeditableView).offset(6);
            make.trailing.equalTo(self.BGeditableView).offset(-6);
            make.height.mas_equalTo(18);
        }];
//        [self.BGline mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(self.BGeditableView.mas_bottom).offset(11.5);
//            make.leading.equalTo(self.contentView);
//            make.trailing.equalTo(self.contentView);
//            make.height.mas_equalTo(1);
//            make.bottom.equalTo(self.contentView.mas_bottom);
//        }];
    }
    return self;
}
- (void)setBGViewModel:(BGCargoAddViewModel *)BGViewModel{
    _BGViewModel = BGViewModel;
    if ([_BGViewModel.BGTitle length]){
        self.BGtitleLbl.text = _BGViewModel.BGTitle;
    }else{
        self.BGtitleLbl.text = @"";
    }
    if ([_BGViewModel.BGDefault length]) {
        self.BGhiddenLbl.text = _BGViewModel.BGDefault;
    } else {
        self.BGhiddenLbl.text = @"";
    }
    if (_BGViewModel.BGContent.length) {
        self.BGeditableView.text = _BGViewModel.BGContent;
        self.BGhiddenLbl.hidden = YES;
    } else {
        self.BGeditableView.text = @"";
        self.BGhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.BGhiddenLbl.hidden = NO;
    } else {
        self.BGhiddenLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.BGeditableView sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.BGViewModel.BGContent = textView.text;
    self.BGcontentHeight = size.height;
    if (self.BGcontentHeight > 110) {
        if (self.BGeditBlock) {
            self.BGeditBlock(self);
        }
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.BGhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BGhiddenLbl.hidden = NO;
    }else{
        self.BGhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BGhiddenLbl.hidden = NO;
    }else{
        self.BGhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BGhiddenLbl.hidden = NO;
    }else{
        self.BGhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)BGtitleLbl{
    if (!_BGtitleLbl) {
        _BGtitleLbl = [[UILabel alloc] init];
        _BGtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _BGtitleLbl.textColor = [UIColor blackColor];
    }
    return _BGtitleLbl;
}
- (UILabel *)BGhiddenLbl{
    if (!_BGhiddenLbl) {
        _BGhiddenLbl = [[UILabel alloc] init];
        _BGhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _BGhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _BGhiddenLbl;
}
- (UITextView *)BGeditableView{
    if (!_BGeditableView) {
        _BGeditableView = [[UITextView alloc] init];
        _BGeditableView.delegate = self;
        _BGeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:20];
        _BGeditableView.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _BGeditableView.layer.cornerRadius = 8.0f;
        _BGeditableView.layer.masksToBounds = YES;
        _BGeditableView.layer.borderColor = [UIColor grayColor].CGColor;
        _BGeditableView.layer.borderWidth = 1.5f;
        _BGeditableView.scrollEnabled = NO;
        [_BGeditableView sizeToFit];
    }
    return _BGeditableView;
}
//- (UIView *)BGline{
//    if (!_BGline) {
//        _BGline = [[UIView alloc] init];
//        _BGline.backgroundColor = BGH_Color(226, 228, 232, 1);
//    }
//    return _BGline;
//}
@end
