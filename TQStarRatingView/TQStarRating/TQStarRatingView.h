//
//  TQStarRatingView.h
//  TQStarRatingView
//
//  Created by fuqiang on 13-8-28.
//  Copyright (c) 2013年 TinyQ. All rights reserved.
//


#import <UIKit/UIKit.h>
@class TQStarRatingView;

@protocol StarRatingViewDelegate <NSObject>

@optional

- (void)starRatingView:(TQStarRatingView *)view score:(float)score;

//可以用于设置星星范围控制
- (BOOL)starRatingView:(TQStarRatingView *)view shouldShowScore:(float)score;

@end

/**
 填充粒度
 */
typedef enum : NSUInteger {
    StartFillTypeAll,   //自由填充 粒度是0.1
    StartFillTypeHalf,  //半颗星
    StartFillTypeFull,  //一颗星
} StartFillType;

@interface TQStarRatingView : UIView

@property (nonatomic, weak) id <StarRatingViewDelegate> delegate;
@property (nonatomic, readonly) int numberOfStar;
//设置星星填充的最小粒度 默认是StartFillTypeAll
@property (nonatomic, assign) StartFillType fillType;

/**
 *  初始化TQStarRatingView
 *
 *  @param frame  Rectangles
 *  @param number 星星个数
 *
 *  @return TQStarRatingViewObject
 */
- (id)initWithFrame:(CGRect)frame numberOfStar:(int)number;

/**
 *  设置控件分数
 *
 *  @param score     分数，必须在 0 － 1 之间
 *  @param isAnimate 是否启用动画
 */
- (void)setScore:(float)score withAnimation:(bool)isAnimate;

/**
 *  设置控件分数
 *
 *  @param score      分数，必须在 0 － 1 之间
 *  @param isAnimate  是否启用动画
 *  @param completion 动画完成block
 */
- (void)setScore:(float)score withAnimation:(bool)isAnimate completion:(void (^)(BOOL finished))completion;

@end

#define kBACKGROUND_STAR @"backgroundStar"
#define kFOREGROUND_STAR @"foregroundStar"
#define kNUMBER_OF_STAR  5
