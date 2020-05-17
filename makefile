#!/bin/bash
# Creating README.md

all: README.md

README.md: guessinggame.sh
       echo "## The Unix Workbebch on Coursera Project guessinggame.sh" > README.md
       echo -n "\n**The date and time at which make was run is**: " >> README.md
       date >> README.md
       echo -n "\n**The number of line in guessinggame.sh are**:  " >> README.md
       wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
      rm README.md
