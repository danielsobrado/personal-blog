set arg1=%1
cd C:\Users\daniel\Documents\GitHub\personal_blog
rmdir docs /s /q
mkdir docs
hugo
ping 127.0.0.1 -n 6 > nul
robocopy /move /e C:\Users\daniel\Documents\GitHub\personal_blog\public C:\Users\daniel\Documents\GitHub\personal_blog\docs
rmdir public /s /q
mkdir public
git commit -am "publish"
