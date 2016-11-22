//
//  TQViewController.m
//  TQStarRatingView
//
//  Created by fuqiang on 13-8-28.
//  Copyright (c) 2013年 TinyQ. All rights reserved.
//

#import "TQViewController.h"
#import "TQStarRatingView.h"

@interface TQViewController () <StarRatingViewDelegate>

@property (nonatomic, strong) TQStarRatingView *starRatingView;
@property (nonatomic, strong) IBOutlet TQStarRatingView *nibStarRatingView;
@property (nonatomic, weak) IBOutlet UILabel *scoreLabel;

@end

@implementation TQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.starRatingView = [[TQStarRatingView alloc] initWithFrame:CGRectMake(30, 200, 250, 50)
                                                     numberOfStar:kNUMBER_OF_STAR];
    self.starRatingView.delegate = self;
    [self.view addSubview:self.starRatingView];
    
}

- (void)starRatingView:(TQStarRatingView *)view score:(float)score
{
    self.scoreLabel.text = [NSString stringWithFormat:@"%0.2f",score * 10 ];
    
    [self.nibStarRatingView setScore:score withAnimation:YES];
}

- (IBAction)scoreButtonTouchUpInside:(id)sender
{
    //设置分数。参数需要在0-1之间。
    [self.starRatingView setScore:0.5f withAnimation:YES];
    
    [self.nibStarRatingView setScore:0.5f withAnimation:YES];
    
//OR
//    [self.starRatingView setScore:0.5f withAnimation:YES completion:^(BOOL finished){
//        NSLog(@"Finished");
//    }];
}

@end
