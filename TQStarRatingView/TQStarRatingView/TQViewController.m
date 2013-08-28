//
//  TQViewController.m
//  TQStarRatingView
//
//  Created by fuqiang on 13-8-28.
//  Copyright (c) 2013年 TinyQ. All rights reserved.
//

#import "TQViewController.h"

@interface TQViewController ()
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation TQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TQStarRatingView *starRatingView = [[TQStarRatingView alloc] initWithFrame:CGRectMake(0, 300, 250, 50) numberOfStar:5];
    starRatingView.delegate = self;
    [self.view addSubview:starRatingView];
}

-(void)starRatingView:(TQStarRatingView *)view score:(float)score
{
    self.scoreLabel.text = [NSString stringWithFormat:@"%0.2f",score * 10 ];
}
@end
