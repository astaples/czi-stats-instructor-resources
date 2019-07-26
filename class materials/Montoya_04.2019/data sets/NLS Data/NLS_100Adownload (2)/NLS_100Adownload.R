
# Set working directory
 setwd("C:\\Users\\Amanda Kay Montoya\\Documents\\Psyc 100A\\NLS Data\\NLS_100Adownload (2)")


new_data <- read.table('NLS_100Adownload.dat', sep=' ')
names(new_data) <- c('E7022901',
  'E7022902',
  'E7022903',
  'E7022904',
  'E7022905',
  'E7022906',
  'E7022907',
  'E7022908',
  'E7022909',
  'E7022910',
  'E7022911',
  'E7022912',
  'R0000100',
  'R0536300',
  'R0536401',
  'R0536402',
  'R1235800',
  'R1482600',
  'R9829600',
  'T3145000',
  'T3145300',
  'T3162400',
  'T4406000',
  'T4565600',
  'T6141700',
  'T6141800',
  'T6141900',
  'T6209600',
  'T6209800',
  'Z0370900',
  'Z0371000',
  'Z0371100',
  'Z0371200',
  'Z0371300',
  'Z0371400',
  'Z0371500',
  'Z0371510',
  'Z0371511',
  'Z0371512',
  'Z9084900')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$E7022901 <- factor(data$E7022901, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022902 <- factor(data$E7022902, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022903 <- factor(data$E7022903, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022904 <- factor(data$E7022904, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022905 <- factor(data$E7022905, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022906 <- factor(data$E7022906, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022907 <- factor(data$E7022907, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022908 <- factor(data$E7022908, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022909 <- factor(data$E7022909, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022910 <- factor(data$E7022910, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022911 <- factor(data$E7022911, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$E7022912 <- factor(data$E7022912, 
    levels=c(101.0,102.0,103.0,104.0,105.0,106.0,107.0,108.0,109.0,110.0,201.0,202.0,203.0,204.0,205.0,206.0,207.0,208.0,209.0,210.0), 
    labels=c("Cohabiting with partner 1",
      "Cohabiting with partner 2",
      "Cohabiting with partner 3",
      "Cohabiting with partner 4",
      "Cohabiting with partner 5",
      "Cohabiting with partner 6",
      "Cohabiting with partner 7",
      "Cohabiting with partner 8",
      "Cohabiting with partner 9",
      "Cohabiting with partner 10",
      "Cohabiting with spouse 1",
      "Cohabiting with spouse 2",
      "Cohabiting with spouse 3",
      "Cohabiting with spouse 4",
      "Cohabiting with spouse 5",
      "Cohabiting with spouse 6",
      "Cohabiting with spouse 7",
      "Cohabiting with spouse 8",
      "Cohabiting with spouse 9",
      "Cohabiting with spouse 10"))
  data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 999.0] <- 1.0
  data$R0000100[1000.0 <= data$R0000100 & data$R0000100 <= 1999.0] <- 1000.0
  data$R0000100[2000.0 <= data$R0000100 & data$R0000100 <= 2999.0] <- 2000.0
  data$R0000100[3000.0 <= data$R0000100 & data$R0000100 <= 3999.0] <- 3000.0
  data$R0000100[4000.0 <= data$R0000100 & data$R0000100 <= 4999.0] <- 4000.0
  data$R0000100[5000.0 <= data$R0000100 & data$R0000100 <= 5999.0] <- 5000.0
  data$R0000100[6000.0 <= data$R0000100 & data$R0000100 <= 6999.0] <- 6000.0
  data$R0000100[7000.0 <= data$R0000100 & data$R0000100 <= 7999.0] <- 7000.0
  data$R0000100[8000.0 <= data$R0000100 & data$R0000100 <= 8999.0] <- 8000.0
  data$R0000100[9000.0 <= data$R0000100 & data$R0000100 <= 9999.0] <- 9000.0
  data$R0000100 <- factor(data$R0000100, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0), 
    labels=c("0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999"))
  data$R0536300 <- factor(data$R0536300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("No Information",
      "Male",
      "Female"))
  data$R0536401 <- factor(data$R0536401, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("1: January",
      "2: February",
      "3: March",
      "4: April",
      "5: May",
      "6: June",
      "7: July",
      "8: August",
      "9: September",
      "10: October",
      "11: November",
      "12: December"))
  data$R1235800 <- factor(data$R1235800, 
    levels=c(0.0,1.0), 
    labels=c("Oversample",
      "Cross-sectional"))
  data$R1482600 <- factor(data$R1482600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Black",
      "Hispanic",
      "Mixed Race (Non-Hispanic)",
      "Non-Black / Non-Hispanic"))
  data$R9829600[1.0 <= data$R9829600 & data$R9829600 <= 999.0] <- 1.0
  data$R9829600[1000.0 <= data$R9829600 & data$R9829600 <= 19999.0] <- 1000.0
  data$R9829600[20000.0 <= data$R9829600 & data$R9829600 <= 39999.0] <- 20000.0
  data$R9829600[40000.0 <= data$R9829600 & data$R9829600 <= 59999.0] <- 40000.0
  data$R9829600[60000.0 <= data$R9829600 & data$R9829600 <= 79999.0] <- 60000.0
  data$R9829600[80000.0 <= data$R9829600 & data$R9829600 <= 100000.0] <- 80000.0
  data$R9829600 <- factor(data$R9829600, 
    levels=c(0.0,1.0,1000.0,20000.0,40000.0,60000.0,80000.0), 
    labels=c("0",
      "1 TO 999: .001-.999",
      "1000 TO 19999: 1.000-19.999",
      "20000 TO 39999: 20.000-39.999",
      "40000 TO 59999: 40.000-59.999",
      "60000 TO 79999: 60.000-79.999",
      "80000 TO 100000: 80.000-100.000"))
  data$T3145000 <- factor(data$T3145000, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7"))
  data$T3145300[10.0 <= data$T3145300 & data$T3145300 <= 999.0] <- 10.0
  data$T3145300 <- factor(data$T3145300, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10 TO 999: 10+"))
  data$T3162400 <- factor(data$T3162400, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
    labels=c("1 EXTREMELY DISSATISFIED",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10 EXTREMELY SATISIFIED"))
  data$T4406000[1.0 <= data$T4406000 & data$T4406000 <= 999.0] <- 1.0
  data$T4406000[1000.0 <= data$T4406000 & data$T4406000 <= 1999.0] <- 1000.0
  data$T4406000[2000.0 <= data$T4406000 & data$T4406000 <= 2999.0] <- 2000.0
  data$T4406000[3000.0 <= data$T4406000 & data$T4406000 <= 3999.0] <- 3000.0
  data$T4406000[4000.0 <= data$T4406000 & data$T4406000 <= 4999.0] <- 4000.0
  data$T4406000[5000.0 <= data$T4406000 & data$T4406000 <= 5999.0] <- 5000.0
  data$T4406000[6000.0 <= data$T4406000 & data$T4406000 <= 6999.0] <- 6000.0
  data$T4406000[7000.0 <= data$T4406000 & data$T4406000 <= 7999.0] <- 7000.0
  data$T4406000[8000.0 <= data$T4406000 & data$T4406000 <= 8999.0] <- 8000.0
  data$T4406000[9000.0 <= data$T4406000 & data$T4406000 <= 9999.0] <- 9000.0
  data$T4406000[10000.0 <= data$T4406000 & data$T4406000 <= 14999.0] <- 10000.0
  data$T4406000[15000.0 <= data$T4406000 & data$T4406000 <= 19999.0] <- 15000.0
  data$T4406000[20000.0 <= data$T4406000 & data$T4406000 <= 24999.0] <- 20000.0
  data$T4406000[25000.0 <= data$T4406000 & data$T4406000 <= 49999.0] <- 25000.0
  data$T4406000[50000.0 <= data$T4406000 & data$T4406000 <= 9.9999999E7] <- 50000.0
  data$T4406000 <- factor(data$T4406000, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
    labels=c("0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T4565600[10.0 <= data$T4565600 & data$T4565600 <= 999.0] <- 10.0
  data$T4565600 <- factor(data$T4565600, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10 TO 999: 10+"))
  data$T6141700 <- factor(data$T6141700, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7"))
  data$T6141800 <- factor(data$T6141800, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12"))
  data$T6141900[1.0 <= data$T6141900 & data$T6141900 <= 24.0] <- 1.0
  data$T6141900[25.0 <= data$T6141900 & data$T6141900 <= 49.0] <- 25.0
  data$T6141900[50.0 <= data$T6141900 & data$T6141900 <= 74.0] <- 50.0
  data$T6141900[75.0 <= data$T6141900 & data$T6141900 <= 99.0] <- 75.0
  data$T6141900[100.0 <= data$T6141900 & data$T6141900 <= 124.0] <- 100.0
  data$T6141900[125.0 <= data$T6141900 & data$T6141900 <= 149.0] <- 125.0
  data$T6141900[150.0 <= data$T6141900 & data$T6141900 <= 174.0] <- 150.0
  data$T6141900[175.0 <= data$T6141900 & data$T6141900 <= 199.0] <- 175.0
  data$T6141900[200.0 <= data$T6141900 & data$T6141900 <= 224.0] <- 200.0
  data$T6141900[225.0 <= data$T6141900 & data$T6141900 <= 249.0] <- 225.0
  data$T6141900[250.0 <= data$T6141900 & data$T6141900 <= 9.9999999E7] <- 250.0
  data$T6141900 <- factor(data$T6141900, 
    levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0), 
    labels=c("0",
      "1 TO 24",
      "25 TO 49",
      "50 TO 74",
      "75 TO 99",
      "100 TO 124",
      "125 TO 149",
      "150 TO 174",
      "175 TO 199",
      "200 TO 224",
      "225 TO 249",
      "250 TO 99999999: 250+"))
  data$T6209600 <- factor(data$T6209600, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0), 
    labels=c("None",
      "Less than 1 hour a week",
      "1 to 3 hours a week",
      "4 to 6 hours a week",
      "7 to 9 hours a week",
      "10 hours or more a week"))
  data$T6209800[10.0 <= data$T6209800 & data$T6209800 <= 999.0] <- 10.0
  data$T6209800 <- factor(data$T6209800, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10 TO 999: 10+"))
  data$Z0370900 <- factor(data$Z0370900, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371000 <- factor(data$Z0371000, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371100 <- factor(data$Z0371100, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371200 <- factor(data$Z0371200, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371300 <- factor(data$Z0371300, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371400 <- factor(data$Z0371400, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371500 <- factor(data$Z0371500, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371510 <- factor(data$Z0371510, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371511 <- factor(data$Z0371511, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z0371512 <- factor(data$Z0371512, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$Z9084900 <- factor(data$Z9084900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st grade",
      "2nd grade",
      "3rd grade",
      "4th grade",
      "5th grade",
      "6th grade",
      "7th grade",
      "8th grade",
      "9th grade",
      "10th grade",
      "11th grade",
      "12th grade",
      "Ungraded"))
  return(data)
}

varlabels <- c("2009 MAR: COHABIT STAT MO L1",
  "2009 MAR: COHABIT STAT MO L2",
  "2009 MAR: COHABIT STAT MO L3",
  "2009 MAR: COHABIT STAT MO L4",
  "2009 MAR: COHABIT STAT MO L5",
  "2009 MAR: COHABIT STAT MO L6",
  "2009 MAR: COHABIT STAT MO L7",
  "2009 MAR: COHABIT STAT MO L8",
  "2009 MAR: COHABIT STAT MO L9",
  "2009 MAR: COHABIT STAT MO L10",
  "2009 MAR: COHABIT STAT MO L11",
  "2009 MAR: COHABIT STAT MO L12",
  "PUBID - YTH ID CODE 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "ASVAB_MATH_VERBAL_SCORE_PCT 1999",
  "TIMES/WK R EXERCISE 30+ MIN 2008",
  "HRS/NIGHT R SLEEPS 2008",
  "HOW R RATES HIS CURRENT LIFE 2008",
  "TTL INC WAGES, SALARY PAST YR 2009",
  "HRS/NIGHT R SLEEPS 2009",
  "R'S HEIGHT - FEET 2010",
  "R'S HEIGHT - INCHES 2010",
  "R'S WEIGHT - POUNDS 2010",
  "HRS/WK R USES A COMPUTER 2010",
  "HRS/NIGHT R SLEEPS 2010",
  "CUMPARTNERS, CURRENT (ROS ITEM) L1",
  "CUMPARTNERS, CURRENT (ROS ITEM) L2",
  "CUMPARTNERS, CURRENT (ROS ITEM) L3",
  "CUMPARTNERS, CURRENT (ROS ITEM) L4",
  "CUMPARTNERS, CURRENT (ROS ITEM) L5",
  "CUMPARTNERS, CURRENT (ROS ITEM) L6",
  "CUMPARTNERS, CURRENT (ROS ITEM) L7",
  "CUMPARTNERS, CURRENT (ROS ITEM) L8",
  "CUMPARTNERS, CURRENT (ROS ITEM) L9",
  "CUMPARTNERS, CURRENT (ROS ITEM) L10",
  "CVC_HS_LEFT_HGC"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("MAR_COHABITATION_2009.01_XRND",
    "MAR_COHABITATION_2009.02_XRND",
    "MAR_COHABITATION_2009.03_XRND",
    "MAR_COHABITATION_2009.04_XRND",
    "MAR_COHABITATION_2009.05_XRND",
    "MAR_COHABITATION_2009.06_XRND",
    "MAR_COHABITATION_2009.07_XRND",
    "MAR_COHABITATION_2009.08_XRND",
    "MAR_COHABITATION_2009.09_XRND",
    "MAR_COHABITATION_2009.10_XRND",
    "MAR_COHABITATION_2009.11_XRND",
    "MAR_COHABITATION_2009.12_XRND",
    "PUBID_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "ASVAB_MATH_VERBAL_SCORE_PCT_1999",
    "YHEA-600_2008",
    "YHEA-650_2008",
    "YTEL-55_2008",
    "YINC-1700_2009",
    "YHEA-650_2009",
    "YSAQ-000A000001_2010",
    "YSAQ-000A000002_2010",
    "YSAQ-000B_2010",
    "YHEA-610_2010",
    "YHEA-650_2010",
    "CUMPARTNERS_CURRENT.01_XRND",
    "CUMPARTNERS_CURRENT.02_XRND",
    "CUMPARTNERS_CURRENT.03_XRND",
    "CUMPARTNERS_CURRENT.04_XRND",
    "CUMPARTNERS_CURRENT.05_XRND",
    "CUMPARTNERS_CURRENT.06_XRND",
    "CUMPARTNERS_CURRENT.07_XRND",
    "CUMPARTNERS_CURRENT.08_XRND",
    "CUMPARTNERS_CURRENT.09_XRND",
    "CUMPARTNERS_CURRENT.10_XRND",
    "CVC_HS_LEFT_HGC_XRND")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
new_data <- qnames(new_data)
categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#summary(categories)

#************************************************************************************************************
library(dplyr)
NLSdata <- select(new_data, c("YHEA-650_2009", "KEY_SEX_1997", "KEY_BDATE_M_1997", 
                              "KEY_BDATE_Y_1997", "KEY_RACE_ETHNICITY_1997", 
                              "ASVAB_MATH_VERBAL_SCORE_PCT_1999", "YTEL-55_2008",
                              "YINC-1700_2009", "YSAQ-000A000001_2010", "YSAQ-000A000002_2010",
                              "YSAQ-000B_2010", "YHEA-610_2010", "YHEA-650_2010"))

NLSdata <- data.frame(new_data$`YHEA-650_2009`, new_data$`KEY_SEX_1997`, new_data$KEY_BDATE_M_1997, new_data$KEY_BDATE_Y_1997, new_data$KEY_RACE_ETHNICITY_1997, new_data$ASVAB_MATH_VERBAL_SCORE_PCT_1999, new_data$`YTEL-55_2008`, new_data$`YINC-1700_2009`, new_data$`YSAQ-000A000001_2010`, new_data$`YSAQ-000A000002_2010`, new_data$`YSAQ-000B_2010`, new_data$`YHEA-610_2010`, new_data$`YHEA-650_2010`)
names(NLSdata) <- c("HrsSleep2009", "Sex", "BdayMonth", "YearBorn", "Ethnicity", "ASVAB", "LifeSat2008", "Income2008", "HeightFt2010", "HeightIn2010", "Weight2010", "Computer2010", "HrsSleep2010")


NLSdata$Cohab2009 <- (rowSums(new_data[,30:39], na.rm = TRUE) > 0)
NLSdata$Ethnicity <- factor(NLSdata$Ethnicity, 
                        levels=c(1.0,2.0,3.0,4.0), 
                        labels=c("Black",
                                 "Hispanic",
                                 "Mixed Race (Non-Hispanic)",
                                 "Non-Black / Non-Hispanic"))
NLSdata$Sex <- factor(NLSdata$Sex, 
                        levels=c(1.0,2.0), 
                        labels=c("Male",
                                 "Female"))


NLScomplete <- NLSdata[complete.cases(NLSdata),]

write.csv(NLScomplete, "C:\\Users\\Amanda Kay Montoya\\Documents\\Psyc 100A\\NLS Data\\NLSdata.csv")


















