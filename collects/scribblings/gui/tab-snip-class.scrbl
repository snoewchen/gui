#reader(lib "defreader.ss" "scribble")
@require["common.ss"]
@require["string-snip-class.scrbl"]

@define-class-doc[tab-snip% string-snip% ()]{

An instance of @scheme[tab-snip%] is created automatically when a
 tab is inserted into an editor.


@defconstructor/make[()]{

Creates a snip for a single tab, though the tab is initially empty.

Normally, a single tab is inserted into a @scheme[tab-snip%] object
 using the @method[string-snip% insert] method.

The tab's content is not drawn, through it is used when determining
 the size of a single character in editors where tabbing is determined
 by the character width (see @method[text% set-tabs]); if the content
 is a single tab character (the normal case), then the average
 character width of snip's font is used as the tab's width.

}}