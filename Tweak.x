#include <UIKit/UIKit.h>
// UIView+HierarchyLogging.h
@interface UIView (ViewHierarchyLogging)
- (void)logViewHierarchy;
@end

// UIView+HierarchyLogging.m
@implementation UIView (ViewHierarchyLogging)

- (void)logViewHierarchy
{
	self.hidden = YES;
}

@end
@interface SBIconListPageControl : UIView
@property UIView *subviews;
@end


%hook SBIconListPageControl
-(BOOL)isHidden {
	return YES;
}
-(void)layoutSubviews{
	[self logViewHierarchy];
}
%end