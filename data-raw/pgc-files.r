# Download and combine individual PGC GWAS results from cross disorder paper
# http://www.med.unc.edu/pgc/results-and-downloads/downloads

library(readr)
library(tibble)
library(dplyr)
library(purrr)
library(digest)
library(devtools)

# variables ---------------------------------------------------------------
base.url <- "http://www.med.unc.edu/pgc/files/resultfiles"

manifest <- frame_data(
  ~disorder, ~zipfile,            ~md5,
  "adhd",    "pgc.cross.add.zip", "527061d9a71e51ed6487946178298031",
  "aut",     "pgc.cross.aut.zip", "88f10ed65b002663ee474d11db15c9ef",
  "bip",     "pgc.cross.bip.zip", "bdd66812f9c0512f6e2f1e0571f42102",
  "mdd",     "pgc.cross.mdd.zip", "221f3fb404e41a5ccd4e0df0559cb88f",
  "scz",     "pgc.cross.scz.zip", "77faff697e9dd822bf55fb096321befe"
)



# download ----------------------------------------------------------------
dl.dir <- tempdir()

urls      <- file.path(base.url, manifest$zipfile)
destfiles <- file.path(dl.dir, manifest$zipfile)

walk2(urls, destfiles, ~download.file(url = .x, destfile = .y))


# verify
md5s <- map_chr(destfiles, digest, algo = "md5", file = TRUE)
all(manifest$md5 == md5s)



# load --------------------------------------------------------------------

# extract data filenames from zips
datafiles <- destfiles %>%
  map_df(unzip, list = TRUE) %>%
  filter(grepl(".txt", Name))

manifest$datafile <- datafiles$Name

# unzip data files
walk2(destfiles, manifest$datafile, ~unzip(.x, files = .y, exdir = dl.dir))

pgc.files <- manifest$datafile %>%
  file.path(dl.dir, .) %>%
  set_names(manifest$disorder)

# safe to ignore parsing problems which are caused by lagging space in header row
pgc.all <- pgc.files %>%
  map(read_table2, na = ".") %>%
  map(select, -X12)

# convert chromosomes to factors
chrs <- as.character(1:22)
pgc.all <- pgc.all %>%
  map(~ mutate(.x, hg18chr = factor(hg18chr, levels = chrs)))


# save --------------------------------------------------------------------
paths <- file.path("data", paste0(names(pgc.all), ".rda"))

mapply(
  save,
  list = names(pgc.all),
  file = paths,
  MoreArgs = list(envir = list2env(pgc.all))
)
