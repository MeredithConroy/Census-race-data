colNames <- c(
  'geoid',
  'geoid2',
  'geo_display',
  'total',
  'total_err',
  'white',
  'white_err',
  'black',
  'black_err',
  'native',
  'native_err',
  'asian',
  'asian_err',
  'pacific',
  'pacific_err',
  'other',
  'other_err',
  'two',
  'two_err',
  'three',
  'three_err',
  'other',
  'other_err')

census <- read.csv('ACS_17_5YR_B02001_with_ann.csv', header=TRUE, col.names=colNames)

pct_black <- census$black / census$total

print(pct_black[1]*100)

i <- 1
for(z in census$geo_display) {
  if(z == "ZCTA5 83702") {
    print(c(z, census$white[i], census$black[i], census$total[i]))
  }
  i <- i + 1
}
