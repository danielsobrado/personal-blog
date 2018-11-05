set arg1=%1
cd C:\Users\daniel\Documents\GitHub\personal_blog
hugo
rmdir docs /s /q
mkdir docs
robocopy /move /e C:\Users\daniel\Documents\GitHub\personal_blog\public C:\Users\daniel\Documents\GitHub\personal_blog\docs
rmdir public /s /q
mkdir public
git commit -am "publish"
