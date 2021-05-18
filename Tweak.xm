#import <Foundation/Foundation.h>   
#import <SpringBoard/SpringBoard.h>

@interface SBUILegibilityLabel
-(void)setString:(NSString *)arg1;
@end

@interface CSTeachableMomentsContainerView
-(void)setCallToActionLabel:(SBUILegibilityLabel *)arg1 ;
-(SBUILegibilityLabel *)callToActionLabel;
@end

%hook CSTeachableMomentsContainerView

- (void)_layoutCallToActionLabel {
	
	%orig;
	/* 
	SBUILegibilityLabel* label = MSHookIvar<SBUILegibilityLabel *>(self, "_callToActionLabel");
	NSString *newString = @"Hello, friend.";
	[label setString:newString];	
 	*/
	// I think it might be better to only use MSHookIvar when there is no Getter to to modify the variable.
	SBUILegibilityLabel *label = [self callToActionLabel];
	NSString *helloFriend = @"Hello, friend.";
	[label setString:helloFriend];
	[self setCallToActionLabel:label];
}

%end