if [ "$1" = "all" ]
then
	jsc builder/builder.js -- toc "`cat src/header.html`" "`cat src/book.css`"   "`head -1 src/1.html src/2.html src/3.html src/4.html src/5.html src/6.html src/7.html src/8.html src/9.html`" > all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 1 "`cat src/1.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 2 "`cat src/2.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 3 "`cat src/3.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 4 "`cat src/4.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 5 "`cat src/5.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 6 "`cat src/6.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 7 "`cat src/7.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 8 "`cat src/8.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 9 "`cat src/9.html`" >> all.html
	jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 9 "`cat src/9.html`" >> all.html
	jsc builder/builder.js -- toc "`cat src/footer.html`" "`cat src/book.css`"   "`head -1 src/1.html src/2.html src/3.html src/4.html src/5.html src/6.html src/7.html src/8.html src/9.html`" >> all.html
else
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 1 "`cat src/1.html`" > chapter1.html
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 2 "`cat src/2.html`" > chapter2.html
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 3 "`cat src/3.html`" > chapter3.html
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 4 "`cat src/4.html`" > chapter4.html
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 5 "`cat src/5.html`" > chapter5.html
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 6 "`cat src/6.html`" > chapter6.html
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 7 "`cat src/7.html`" > chapter7.html
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 8 "`cat src/8.html`" > chapter8.html
	jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 9 "`cat src/9.html`" > chapter9.html
	jsc builder/builder.js -- toc     "`cat src/book.html`" "`cat src/book.css`"   "`head -1 src/1.html src/2.html src/3.html src/4.html src/5.html src/6.html src/7.html src/8.html src/9.html`" > index.html
fi