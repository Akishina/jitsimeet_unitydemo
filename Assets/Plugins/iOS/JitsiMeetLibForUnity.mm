//
//  JitsiMeetLibForUnity.m
//  JitsiMeetLibForUnity
//
//  Created by Pham Minh Khoa on 5/16/19.
//  Copyright © 2019 Pham Minh Khoa. All rights reserved.
//

#import "JitsiMeetLibForUnity.h"
#import <JitsiMeet/JitsiMeet.h>

void ConsoleLog(const char* serverURL, const char* room){
    NSLog(@"Hello Unity %s", room);

    NSString *_serverURL = [NSString stringWithFormat:@"%s", serverURL];
    NSString *_room = [NSString stringWithFormat:@"%s", room];

    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UIViewController *rootViewController = window.rootViewController;

    JitsiMeetView *jitsiView = [[JitsiMeetView alloc] init];
    
    [jitsiView setFrame:CGRectMake(100, 200, 500, 500)];
    [rootViewController.view addSubview:jitsiView];
    
    //join the room
    JitsiMeetConferenceOptions *option = [JitsiMeetConferenceOptions
                                          fromBuilder:^(JitsiMeetConferenceOptionsBuilder * builder) {
                                              builder.serverURL = [NSURL URLWithString:_serverURL];
                                              builder.room = _room;
                                              builder.audioOnly = NO;
                                              builder.audioMuted = NO;
                                              builder.videoMuted = NO;
                                          }];
    [jitsiView join:option];
}
