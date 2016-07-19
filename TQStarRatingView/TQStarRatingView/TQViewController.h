//
//  TQViewController.h
//  TQStarRatingView
//
//  Created by fuqiang on 13-8-28.
//  Copyright (c) 2013年 TinyQ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TQStarRatingView.h"

@interface TQViewController : UIViewController <StarRatingViewDelegate>

@property (nonatomic, strong) TQStarRatingView *starRatingView;
@property (nonatomic, strong) IBOutlet TQStarRatingView *nibStarRatingView;

- (IBAction)scoreButtonTouchUpInside:(id)sender;

@end
