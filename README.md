# project-arroyo
FO2 remastered in the creation engine. We are a group of loyal fallout fans who would like to see "old fallout" and "new fallout" become one and the same. Please DM DocWhite#9295 if you are interested in joining our project

For now there are no limits on who can contribute as long as you are officially part of our project via Discord first but when submitting a pull request (more on that below) you must say what you changed with detail or we may have to denyt it since we're working with a file instead of source code and we can't risk not knowing what is or isn't in our master file.

**WTF? Dependency Mods? How do I use them?**

Anything in Dependencies/Data should be installed to your FO4's Data folder like you would any other mod. projectarroyo.esm uses these mods as parent masters so you WILL need them installed if you want to work on the mod in CK. On release we will eventually bundle the dependencies with the actual mod so players only have one download, but for now we keep it seperate in case we need to make changes or update a mod to a newer version.

**How to commit to this repository using esps**

First off you need to fork this repository. Then you should take the esm file in ProjectArroyo/Data and move it to your FO4 Data folder. This is the master file you will be basing your changes on. Please note in order to load this esm you must already have all dependency mods (Dependencies/Data path) installed because those are parent masters to projectarroyo.esm. 

Make your additions and changes in your esp then once you are all finished with your changes upload it to your github fork. After that send a pull request with your fork to the main repository so hjk321 (the Lead Mechanic) can merge your esp into the master esm. Your pull request may show up as "denied" but that's just because I directly use your file instead of pulling your esp into the repository. Rest assured if your pull request is REALLY denied we will reach out to you about why. But it shouldn't happen unless there's a good reason.

Lead Mechanic takes responsibility for merging esps and resolving conflicts in the file. Nobody else needs to do this. Feel free to reach out to him in discord for special considerations in this matter.



