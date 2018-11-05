set arg1=%1
cd E:\Documents\GitHub\personal-blog\public
rmdir docs /s /q
mkdir docs
hugo
ping 127.0.0.1 -n 2 > nul
robocopy /move /e E:\Documents\GitHub\personal-blog\public E:\Documents\GitHub\personal-blog\docs
cd ..
rmdir public /s /q
mkdir public
git commit -am "publish"

