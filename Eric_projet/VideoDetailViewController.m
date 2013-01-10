//
//  DebuggerDetailViewController.m
//  MSToolTips
//
//  Created by Marian Paul on 03/10/12.
//  Copyright (c) 2012 Marian Paul. All rights reserved.
//

#import "VideoDetailViewController.h"

#import "YouTubeVideo.h"

@interface VideoDetailViewController ()

@end

@implementation VideoDetailViewController
@synthesize titleLabel = _titleLabel;
@synthesize captionLabel = _captionLabel;
@synthesize video = _video;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    LBYouTubePlayerViewController *c = [[LBYouTubePlayerViewController alloc] initWithYouTubeID:_video.youtubeID];
    c.quality = LBYouTubePlayerQualityLarge;
    c.view.frame = CGRectMake(0.0f, 0.0f, 320.0f, 270.0f);
    [self.view addSubview:c.view];
}


-(void)viewWillAppear:(BOOL)animated//il faut que le setter soit appelé après le push (qui initialise titlelabel... on voit que l'adresse est 00000 au début).
{
    _titleLabel.text=_video.title;
    _captionLabel.text = _video.caption;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTitleLabel:nil];
    [self setCaptionLabel:nil];
    [super viewDidUnload];
}
@end
