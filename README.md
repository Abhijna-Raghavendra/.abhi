## "```.abhi```" - My attempt at building a version control system

This project has begun in a 36 hour hackathon. My sole objective of building this is to better understand version control. I'm not trying to make a VCS that will replace everything that already exists - in fact it will only try to implement the **most** basic features. I will be referring to [Eric Sink's blog](https://ericsink.com/scm/source_control.html) in this effort.

I have successfully been able to implement the following:
- an ```abhi-init``` script to initialize a repository at a given directory
- an ```abhi-commit``` script to commit changes
- an ```abhi-log``` script to display the commits in a well ordered manner

> If you run into issues while running the ```abhi-commit``` script... switch to linux :sweat_smile:... or follow [this](https://shchae7.medium.com/how-to-use-rsync-on-git-bash-6c6bba6a03ca)

In the near future, I'll be trying to implement delta encryption (right now, I only copy all the files of the working directory recursively), staging areas, branches. Although ```.abhi``` is possibly the most crude attempt at a file versioning system, the hackathon has been a beautiful learning experience...and..I'm pretty sure this is going to be one of those repositories I'm going to be actively working on.

> *A side note to **git** from **abhi***   
> *I know you're going to be watching me grow. One day I will be as great as you.*

Do keep an eye on this repo. I promise to keep updating often.
Cheers!! :relaxed: