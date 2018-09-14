set arg1=%1
cd C:\Users\daniel\Documents\GitHub\personal_blog
hugo
robocopy /move /e C:\Users\daniel\Documents\GitHub\personal_blog\public C:\Users\daniel\Documents\GitHub\personal_blog\docs
git commit -am %1
git push