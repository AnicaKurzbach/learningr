source(here::here("R/package-loading.R"))
glimpse(NHANES)
# Check column names
colnames(NHANES)

# Look at contents
str(NHANES)
glimpse(NHANES)

# See summary
summary(NHANES)

# Look over the dataset documentation
?NHANES

NHANES %>%
  colnames() %>%
  length()
NHANES %>%
  mutate(Height=Height/100)
NHANES %>%
  mutate(Height=Height/100,
         Testing="yes",
         HighlyActive=if_else(
           PhysActiveDays>=5,
           "yes",
           "no"
         ))
NHANES_updated <- NHANES %>%
  mutate(UrineVolAverage=(UrineVol1+UrineVol2)/2)

# wrangling-session-R_exercise --------------------------------------------

# Check the names of the variables
colnames(NHANES)

# Pipe the data into mutate function and:
NHANES_modified <- NHANES %>% # dataset
  mutate(
    # 1. Calculate average urine volume
    (UrineVol1+UrineVol2)/2 = UrineVolAverage,
    # 2. Modify Pulse variable
    Pulse = Pulse/60,
    # 3. Create YoungChild variable using a condition
    YoungChild = if_else(Age<6, TRUE, FALSE)
  )
NHANES_modified
# Check the names of the variables
colnames(NHANES)

# Pipe the data into mutate function and:
NHANES_modified <- NHANES %>% # dataset
  mutate(
    # 1. Calculate average urine volume
     = ___,
    # 2. Modify Pulse variable
    ___ = ___,
    # 3. Create YoungChild variable using a condition
    ___ = if_else(___, TRUE, FALSE)
  )
NHANES_modified

# Check the names of the variables
colnames(NHANES)

# Pipe the data into mutate function and:
NHANES_modified <- NHANES %>% # dataset
  mutate(
    # 1. Calculate average urine volume
    UrineVolAverage = (UrineVol1 + UrineVol2) / 2,
    # 2. Modify Pulse variable
    Pulse = Pulse / 60,
    # 3. Create YoungChild variable using a condition
    YoungChild = if_else(Age < 6, TRUE, FALSE)
  )
NHANES_modified
NHANES %>%
  select(Gender, BMI)
NHANES %>%
  select(-Gender)
NHANES %>%
  filter(Gender!="female")

# To see values of categorical data
summary(NHANES)

# 1. BMI between 20 and 40 and who have diabetes
NHANES %>%
  # format: variable >= number
  filter(BMI >= 20 & BMI <= 40 & Diabetes == "yes")

# 2. Working or renting, and not diabetes
NHANES %>%
  filter(Work == "Working" | HomeOwn == "Rent" & Diabetes == "yes") %>%
  select(Age, Gender, Work, HomeOwn, Diabetes)

NHANES %>%
  arrange(desc(nBabies)) %>%
  select(Age, nBabies)


# Group by and summarise --------------------------------------------------

NHANES %>%
  summarise(MaxAge=max(Age, na.rm = TRUE
                       ),
            MinBMI=min(BMI, na.rm = TRUE
                       ))
NHANES %>%
  group_by(Gender) %>%
  summarise(meanBMI = mean(BMI, na.rm =
                             TRUE))

NHANES %>%
  group_by(Gender, Work) %>%
  summarise(meanBMI = mean(BMI, na.rm =
                             TRUE))
table4b %>%
  gather(year, population, -country)

table4b %>%
  gather(year, population, '1999', '2000')

NHANES_simple <- NHANES %>%
  select(SurveyYr, Gender, Age,
         Weight, Height, BMI,
         BPSysAve)

nhanes_long <- NHANES_simple %>%
  gather(Measure, Value, -SurveyYr, -Gender)

nhanes_summary <- nhanes_long %>%
  group_by(SurveyYr, Gender,
           Measure) %>%
  summarise(
    MeanValue = mean(Value, na.rm =
                       TRUE)


  )

table2 %>%
  spread(type, count)

nhanes_summary %>%
  spread(Gender, MeanValue)

NHANES
NHANES %>%
  filter(Age>=18, Age<=75) %>%
  arrange(desc(nBabies)) %>%

  select(Age, AgeDiabetesDiagnosis, BMI, BPDiaAve, BPSysAve, DrinksOfAlcoholInDay, MoreThan5DaysActive, NumberOfBabies, Poverty, TotalCholesterol)


NHANES %>%
  rename(rinksOfAlcoholInDay = AlcoholDay,
         NumberOfBabies = nBabies,
         AgeDiabetesDiagnosis = DiabetesAge,
         TotalCholesterol = TotChol,
         PhysicalActiveDays = PhysActiveDays)

NHANES %>%
  filter(PhysActiveDays>=5)

NHANES_Anica <- NHANES %>%
  filter(Age, SexAge)

glimpse(NHANES)

view(NHANES)
