counter.config = 0

# ---- lib ----
counter.config = counter.config + 1
message(counter.config,": lib")

packages = c(
  # generates a path to the Rproj on the local machine
  "here"
)


# ---- setup output directory and counters ---- 
counter.config = counter.config + 1
message(counter.config,": setup output directory and counters")

# output
step="003"
stepDIR=here("results",paste0(step,".", "getting_and_cleaning_data", "/"))
if(!dir.exists(stepDIR)){dir.create(stepDIR)}
message("Local output path: ", stepDIR)

outdataDIR=here("outdata",paste0(step,".", "getting_and_cleaning_data", "/"))
if(!dir.exists(outdataDIR)){dir.create(outdataDIR)}
# directory for writing tables that describe samples delivered, etc
tableDIR = paste0(stepDIR, "tables/")
if(!dir.exists(tableDIR)){dir.create(tableDIR)}
# counter for numbering figures
counter.fig = 0
counter.table = 0
counter.appendix = 0
counter.vignette = 0



# ---- define recurrent parameters ---- 
counter.config = counter.config + 1
message(counter.config,": define recurrent parameters")