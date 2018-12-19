r = getOption("repos")
r["CRAN"] = "http://lib.ugent.be/CRAN/"
options(repos = r)
rm(r)
.libPaths("/root/pksim/Rlibraries")
# install.packages("http://www.lapk.org/software/Pmetrics/Repos/src/contrib/Pmetrics_1.5.2.tar.gz", repos=NULL)
library(Pmetrics)
PMbuild()