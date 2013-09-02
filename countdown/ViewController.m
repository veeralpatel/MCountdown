//
//  ViewController.m
//  countdown
//
//  Created by Veeral Patel on 9/2/13.
//  Copyright (c) 2013 Veeral Patel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)updateLabel {
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    int units = NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *components = [calender components:units fromDate:[NSDate date] toDate:destinationDate options:0];
    [monthLabel setText: [NSString stringWithFormat:@"%d MO",[components month]]];
    [dayLabel setText: [NSString stringWithFormat:@"%d DAY",[components day]]];
    [hourLabel setText: [NSString stringWithFormat:@"%d HR",[components hour]]];
    [minuteLabel setText: [NSString stringWithFormat:@"%d MIN",[components minute]]];
    [secondLabel setText: [NSString stringWithFormat:@"%d SEC",[components second]]];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    destinationDate = [NSDate dateWithTimeIntervalSince1970:1379736000]; //sept 21 at 12am!
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
