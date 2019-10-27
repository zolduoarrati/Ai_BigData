import re
import numpy as np
def regex_remove(txt):
    k=''''''
    x = re.findall("r'^https?:\/\/.*[\r\n]*'+",txt)
    #matches = x.finditer(txt)
    # for match in matches:
    #     # match += match;
    #     # print(" ")
    #     print(match)
    for e in x:
        k+=e+" "
    print(k)






# def mapfn(k, v):
#     print v
#     import re, strin
#     pattern = re.compile('[\W_]+')
#     v = pattern.match(v)
#     print v
#     for w in v.split():
#         yield w, 1

txt ='''
fuck you git-filter seriously piece of shit
"![thumbs](https://cloud.githubusercontent.com/assets/316562/4396293/a419e1b2-4433-11e4-8e3b-017d2ba1cda2.gif)
\
"
"I have amended my PR for a third time, largely after your specification. I know PPSSPP doesn't need the timer based raise-on-top function, but I it won't hurt either. It would help other programs like RetroRig that launch ppsspp from within a fullscreened"
"Also fixed some print-to-stdout print-to-stderr issues, added binary selection and less verbose."
"Yes but I think need FlushBits for each loop, without this the packet don't work"
"see above, but add `_async`"
"this should probably be split into:
\
* `test_can_execute_simple_batch_statements`
\
* `test_can_execute_batch_statements_with_parameters`
\
* `test_can_execute_batch_statements_with_prepared_statements`"
"Yep, sounds like a good idea ... Will add this ... Still, it's not the main goal of this specific refactoring, so that's not what I will concentrate on. Some will probably survive ..."
"This should be safe now (`songData` itself doesn't get stored back in the music database), but it might make sense for us to revisit this when we're refactoring the music app. I'd like it if we weren't messing with `songData` at all (but currently it's a p"
"It's moving along, but still have lots of work to do, before release:
\

\
![screen shot 2014-09-24 at 22 22 13](https://cloud.githubusercontent.com/assets/3130363/4396004/e5db8a2c-4430-11e4-8e59-cd31b4028a1a.png)
\

\
After I track some issues with matrices i"
"You can't just revert 81cec6d687f30c1ff7d020c227952de2f49848ce anymore, because I also removed the old (now redundant) `STATE_OK` check, so you probably left `green_new` without `STATE_OK` at all. If you want the old behavior, you also need to revert 67d8e"
awesome...I'll try that. Thanks in advance. :+1:
"All I'm saying is that the bottleneck will probably be IO and not the number of CPU threads.
\

\
If you make a benchmark and you come to the conclusion that is not right, then sure let it use as many as it wants. But imagine with the newer CPUs with 6 or ev"
Sent. I thought I had lost it. Found it though.
"Sorry, I'm sleepy, criteriaBits is different from criteriaData"
"The translator seems to work also for left-to-right languages, I tried the example:
\
http://global.factiva.com/redir/default.aspx?P=sa&an=SYDT000020140630ea6u0001w&cat=a&ep=ASE"
"I would rather have a consistency over the different pages, so Christian and you should use the same images and names, then you can avoid multiple sounds, images and so on if they aren't unique.
\

\
Would feel strange to have one page with lots of resolutio"
"Hello! ^^
\

\
Does deepsleep work with it? I would like to implement this to Sony kernel"
What needs doing here?
I'm being removed? :(
:(
"Yup, just seeing local failures for this now.  Fixing up..."
Done
'''

regex_remove(txt)
