############
### Info ###
############
#
# Project: Pause particles influencing recollection in lectures
#
# Conference: 20th International Congress of Phonetic Sciences (ICPhS '23)
#
# Contributors: Mikey Elmers
#
# Part 01: Load and clean data
#
# Date: December 06, 2022
#
#-------------------------------------------------------
# load packages
library(dplyr)
library(stringr)
library(tidyr)

################################################################################
# Load L1 German data
df_listen <- read.csv(file = "data/raw/nns/trials.csv")
df_listen <- df_listen %>% filter(Task_Name != "congratulations")
df_listen <- df_listen %>% filter(Task_Name != "instructions")
df_listen <- df_listen %>% filter(Task_Name != "questionnaire")
df_listen <- df_listen[ , names(df_listen) %in%
                          c("Rec_Session_Id", "Block_Name", "audiofile",
                            "q1", "q2")]
################################################################################
# Add score column
df_listen <- df_listen %>% 
  mutate(score = 0)
################################################################################
# Loop through to check score : engl310_01
for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_01_orig.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 1){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_01_nopints.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 1){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_01_sil.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 1){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_07
for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_07_orig.wav"){
    if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] != 2){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_07_nopints.wav"){
    if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] != 2){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_07_sil.wav"){
    if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] != 2){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_13
for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_13_orig.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_13_nopints.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_13_sil.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_24
for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_24_orig.wav"){
    if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_24_nopints.wav"){
    if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_24_sil.wav"){
    if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}
################################################################################
# total score for each participant
df_listen <- df_listen %>% 
  group_by(Rec_Session_Id) %>% 
  mutate(total_score = sum(score))
################################################################################
# Questionnaire Only
df_questionnaire <- read.csv(file = "data/raw/nns/trials.csv")
df_questionnaire <- df_questionnaire %>% filter(Task_Name == "questionnaire")
df_questionnaire  <- df_questionnaire[ , !names(df_questionnaire) %in%
                                         c("Trial_Nr", "Trial_Id", "Block_Nr", "Block_Name", "Task_Nr", 
                                           "audiofile", "Condition_Id", "copy_of_factor1_tg1_task3_2585", 
                                           "copy_of_factor1_tg1_task3_75eb", "factor1_tg1_task3", 
                                           "prolific", "q1", "q2", "q3")]
################################################################################
# Join Questionnaire and Listening Task
# Rename columns
df_listen <- rename(df_listen, id = Rec_Session_Id)
df_listen <- rename(df_listen, condition = Block_Name)
df_questionnaire <- rename(df_questionnaire, id = Rec_Session_Id)
df_questionnaire <- rename(df_questionnaire, task = Task_Name)
df_nns <- left_join(df_listen, df_questionnaire, by = "id")

# write binomial data t oworking before collapsing to single row per id
write.csv(df_nns, "data/working/data_nns_binom.csv", row.names = FALSE)

df_nns <- unique(df_nns[ , names(df_nns) %in%
                           c("id", "condition", "total_score", "age", "ease",
                             "edu", "imphear", "interest", "L1", "notes", "prep",
                             "self", "test")])

# write to working directory
write.csv(df_nns, "data/working/data_nns.csv", row.names = FALSE)
################################################################################
################################################################################
################################################################################
# Load English speaker data 
df_listen <- read.csv(file = "data/raw/ns/trials.csv")
df_listen <- df_listen %>% filter(Task_Name != "congratulations")
df_listen <- df_listen %>% filter(Task_Name != "instructions")
df_listen <- df_listen %>% filter(Task_Name != "questionnaire")
df_listen <- df_listen[ , names(df_listen) %in%
                          c("Rec_Session_Id", "Block_Name", "audiofile",
                            "q1", "q2")]
################################################################################
# Add score column
df_listen <- df_listen %>% 
  mutate(score = 0)
################################################################################
# Loop through to check score : engl310_01
for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_01_orig.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 1){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_01_nopints.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 1){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_01_sil.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 1){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 1){
      df_listen$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_07
for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_07_orig.wav"){
    if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] != 2){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_07_nopints.wav"){
    if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] != 2){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_07_sil.wav"){
    if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 4 & df_listen$q2[[i]] != 2){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 4 & df_listen$q2[[i]] == 2){
      df_listen$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_13
for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_13_orig.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_13_nopints.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_13_sil.wav"){
    if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 1 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 1 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_24
for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_24_orig.wav"){
    if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_24_nopints.wav"){
    if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_listen)){
  if (df_listen$audiofile[[i]] == "engl310_24_sil.wav"){
    if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 2
    } else if (df_listen$q1[[i]] == 3 & df_listen$q2[[i]] != 4){
      df_listen$score[[i]] <- 1
    } else if (df_listen$q1[[i]] != 3 & df_listen$q2[[i]] == 4){
      df_listen$score[[i]] <- 1
    }
  } 
}
################################################################################
# total score for each participant
df_listen <- df_listen %>% 
  group_by(Rec_Session_Id) %>% 
  mutate(total_score = sum(score))
################################################################################
# Questionnaire Only
df_questionnaire <- read.csv(file = "data/raw/ns/trials.csv")
df_questionnaire <- df_questionnaire %>% filter(Task_Name == "questionnaire")
df_questionnaire  <- df_questionnaire[ , !names(df_questionnaire) %in%
                                         c("Trial_Nr", "Trial_Id", "Block_Nr", "Block_Name", "Task_Nr", 
                                           "audiofile", "Condition_Id", "copy_of_factor1_tg1_task3_2585", 
                                           "copy_of_factor1_tg1_task3_75eb", "factor1_tg1_task3", 
                                           "prolific", "q1", "q2", "q3")]
################################################################################
# Join Questionnaire and Listening Task
# Rename columns
df_listen <- rename(df_listen, id = Rec_Session_Id)
df_listen <- rename(df_listen, condition = Block_Name)
df_questionnaire <- rename(df_questionnaire, id = Rec_Session_Id)
df_questionnaire <- rename(df_questionnaire, task = Task_Name)
df_ns <- left_join(df_listen, df_questionnaire, by = "id")

# write binomial data t oworking before collapsing to single row per id
write.csv(df_ns, "data/working/data_ns_binom.csv", row.names = FALSE)

df_ns <- unique(df_ns[ , names(df_ns) %in%
                           c("id", "condition", "total_score", "age", "ease",
                             "edu", "imphear", "interest", "L1", "notes", "prep",
                             "self", "test")])

# write to working directory
write.csv(df_ns, "data/working/data_ns.csv", row.names = FALSE)
################################################################################
# vertically join both the English and German dataframes
df_en <- read.csv(file = "data/working/data_ns.csv")
df_de <- read.csv(file = "data/working/data_nns.csv")
df_full <- rbind(df_de, df_en)

# relabel condition category
df_full$condition <- str_replace(df_full$condition, "nopints_ns", "nopints")
df_full$condition <- str_replace(df_full$condition, "nopints_nns", "nopints")
df_full$condition <- str_replace(df_full$condition, "original_ns", "original")
df_full$condition <- str_replace(df_full$condition, "original_nns", "original")
df_full$condition <- str_replace(df_full$condition, "sil_ns", "silence")
df_full$condition <- str_replace(df_full$condition, "sil_nns", "silence")

df_de$condition <- str_replace(df_de$condition, "nopints_ns", "nopints")
df_de$condition <- str_replace(df_de$condition, "nopints_nns", "nopints")
df_de$condition <- str_replace(df_de$condition, "original_ns", "original")
df_de$condition <- str_replace(df_de$condition, "original_nns", "original")
df_de$condition <- str_replace(df_de$condition, "sil_ns", "silence")
df_de$condition <- str_replace(df_de$condition, "sil_nns", "silence")

df_en$condition <- str_replace(df_en$condition, "nopints_ns", "nopints")
df_en$condition <- str_replace(df_en$condition, "nopints_nns", "nopints")
df_en$condition <- str_replace(df_en$condition, "original_ns", "original")
df_en$condition <- str_replace(df_en$condition, "original_nns", "original")
df_en$condition <- str_replace(df_en$condition, "sil_ns", "silence")
df_en$condition <- str_replace(df_en$condition, "sil_nns", "silence")
################################################################################
# write dataframe to "final" subdirectory within the "data" directory
write.csv(df_full, "data/final/data_full.csv", row.names = FALSE)
write.csv(df_de, "data/final/data_de.csv", row.names = FALSE)
write.csv(df_en, "data/final/data_en.csv", row.names = FALSE)
################################################################################
################################################################################
################################################################################
df_en_binom <- read.csv("data/working/data_ns_binom.csv")
df_de_binom <- read.csv("data/working/data_nns_binom.csv")
df_full_binom <- rbind(df_en_binom, df_de_binom)
df_full_binom <- df_full_binom %>% 
 select(-score, -total_score, -task)

df_full_binom <- df_full_binom %>% 
  gather(key = "question",
         value = "answer",
         c(q1, q2))

write.csv(df_full_binom, "data/working/data_binomial.csv", row.names = FALSE)
df_binomial <- read.csv(file = "data/working/data_binomial.csv")
################################################################################
# Add score column
df_binomial <- df_binomial %>% 
  mutate(score = 0)
################################################################################
# Loop through to check score : engl310_01
for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_01_orig.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_01_orig.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_01_nopints.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_01_nopints.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_01_sil.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_01_sil.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_07
for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_07_orig.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_07_orig.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 2){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_07_nopints.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_07_nopints.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 2){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_07_sil.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_07_sil.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 2){
      df_binomial$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_13
for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_13_orig.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_13_orig.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_13_nopints.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_13_nopints.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_13_sil.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 1){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_13_sil.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}
################################################################################
# Loop through to check score : engl310_24
for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_24_orig.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 3){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_24_orig.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_24_nopints.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 3){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_24_nopints.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_24_sil.wav" & df_binomial$question[[i]] == "q1"){
    if (df_binomial$answer[[i]] == 3){
      df_binomial$score[[i]] <- 1
    }
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_24_sil.wav" & df_binomial$question[[i]] == "q2"){
    if (df_binomial$answer[[i]] == 4){
      df_binomial$score[[i]] <- 1
    }
  } 
}
################################################################################
df_binomial <- df_binomial %>% 
  mutate(precede = "no")

df_binomial <- df_binomial %>% 
  filter(audiofile != "engl310_01_nopints.wav" & audiofile != "engl310_07_nopints.wav" & audiofile != "engl310_13_nopints.wav" & audiofile != "engl310_24_nopints.wav")
################################################################################ 
# Loop through to check preceding
# Loop through to check score : engl310_01
for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_01_orig.wav" & df_binomial$question[[i]] == "q2"){
    df_binomial$precede[[i]] <- "yes"
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_01_sil.wav" & df_binomial$question[[i]] == "q2"){
    df_binomial$precede[[i]] <- "yes"
  } 
}
################################################################################
# Loop through to check score : engl310_07
for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_07_orig.wav" & df_binomial$question[[i]] == "q2"){
    df_binomial$precede[[i]] <- "yes"
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_07_sil.wav" & df_binomial$question[[i]] == "q2"){
    df_binomial$precede[[i]] <- "yes"
  } 
}
################################################################################
# Loop through to check score : engl310_13
for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_13_orig.wav" & df_binomial$question[[i]] == "q1"){
    df_binomial$precede[[i]] <- "yes"
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_13_sil.wav" & df_binomial$question[[i]] == "q1"){
    df_binomial$precede[[i]] <- "yes"
  } 
}
################################################################################
# Loop through to check score : engl310_24
for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_24_orig.wav" & df_binomial$question[[i]] == "q1"){
    df_binomial$precede[[i]] <- "yes"
  } 
}

for (i in 1:nrow(df_binomial)){
  if (df_binomial$audiofile[[i]] == "engl310_24_sil.wav" & df_binomial$question[[i]] == "q1"){
    df_binomial$precede[[i]] <- "yes"
  } 
}
################################################################################
# Write to final directory
write.csv(df_binomial, "data/final/data_binomial_all.csv", row.names = FALSE)
