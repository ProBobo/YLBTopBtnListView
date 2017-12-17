//
//  TopGiftListBtnView.m
//  QiYuLive
//
//  Created by 余礼钵 on 2017/12/17.
//  Copyright © 2017年 奇遇直播. All rights reserved.
//

#import "TopGiftListBtnView.h"

@interface TopGiftListBtnView()
@property(nonatomic , strong)NSMutableArray *titleArray;
@property(nonatomic , strong)UIColor *colorNormal;
@property(nonatomic , strong)UIColor *colorSelected;
@property(nonatomic , assign)int btnTag;
@end

@implementation TopGiftListBtnView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame titleArray:(NSMutableArray *)titleArray fontHeight:(CGFloat)fontHeight colorNormal:(UIColor *)colorNormal colorSelected:(UIColor *)colorSelected titleBtn_Block:(TopGiftListBtnView_TitleBtn_Block)titleBtn_Block
{
    self = [super initWithFrame:frame];
    if (self) {
        self.btnTag = -1;
        self.titleArray = titleArray;
        self.colorNormal = colorNormal;
        self.colorSelected = colorSelected;
        self.titleBtn_Block = titleBtn_Block;
        
        CGFloat W = CGRectGetWidth(self.frame)/titleArray.count;
        CGFloat H = CGRectGetHeight(self.frame);//[[PlayCommonMethod sharedInstance] fontSizeHeight:fontHeight];
        CGFloat X = 0;
        CGFloat Y = (CGRectGetHeight(self.frame) - H)/2;
        for (int i = 0; i < titleArray.count; i++) {
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(X, Y, W, H)];
            btn.tag = i;
            [btn addTarget:self action:@selector(titleBtnArray_Method:) forControlEvents:UIControlEventTouchUpInside];
            
            btn.titleLabel.font = [UIFont systemFontOfSize:fontHeight];
            [btn setTitle:titleArray[i] forState:UIControlStateNormal];
            if (i == 0) {
                [btn setTitleColor:colorSelected forState:UIControlStateNormal];
            }
            else
            {
                [btn setTitleColor:colorNormal forState:UIControlStateNormal];
            }
            [self addSubview:btn];
            [self.titleBtnArray addObject:btn];
            X += W;
        }
    }
    return self;
}
- (NSMutableArray *)titleArray
{
    if (!_titleArray) {
        _titleArray = [@[] mutableCopy];
    }
    return _titleArray;
}
- (NSMutableArray *)titleBtnArray
{
    if (!_titleBtnArray) {
        _titleBtnArray = [@[] mutableCopy];
    }
    return _titleBtnArray;
}
- (void)titleBtnArray_Method:(id)sender
{
    UIButton *btn = sender;
    int tag = (int)btn.tag;
    [self changeBtn_Method:tag];
    if (self.titleBtn_Block) {
        self.titleBtn_Block(tag);
    }
}
- (void)changeBtn_Method:(int)tag
{
    if (self.btnTag == tag) {
        return;
    }
    self.btnTag = tag;
    for (int i = 0; i < self.titleBtnArray.count; i++) {
        UIButton *titleBtn = self.titleBtnArray[i];
        if (i == tag) {
            [titleBtn setTitleColor:self.colorSelected forState:UIControlStateNormal];
        }
        else
        {
            [titleBtn setTitleColor:self.colorNormal forState:UIControlStateNormal];
        }
    }
}
@end
