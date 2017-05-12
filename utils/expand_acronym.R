expand_acronym <- function(line_tokens) {
  
  ################ 6 characters
  line_tokens <- gsub(pattern = "^c diff$", replacement = "clostridium difficile", x = line_tokens)
  
  
  ################ 5 characters
  line_tokens <- gsub(pattern = "^a-fib$", replacement = "atrial fibrillation", x = line_tokens)
  line_tokens <- gsub(pattern = "^ascad$", replacement = "atherosclerotic coronary artery disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^ascvd$", replacement = "atherosclerotic cardiovascular disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^atcvd$", replacement = "atherosclerotic cardiovascular disease", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^bcell$", replacement = "b cell", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^cdiff$", replacement = "clostridium difficile", x = line_tokens)
  line_tokens <- gsub(pattern = "^c dif$", replacement = "clostridium difficile", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^dm-ii$", replacement = "diabetes mellitus type ii", x = line_tokens)
  line_tokens <- gsub(pattern = "^dvtpe$", replacement = "deep venous thrombosis pulmonary embolism", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^insuf$", replacement = "insufficiency", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^niddm$", replacement = "non insulin dependent diabetes mellitus", x = line_tokens)
  line_tokens <- gsub(pattern = "^nsclc$", replacement = "non small cell lung cancer", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^polg2$", replacement = "dna polymerase gamma 2", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^siadh$", replacement = "secretion of antidiuretic hormone", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^stemi$", replacement = "segment st elevation myocardial infarction", x = line_tokens)
  line_tokens <- gsub(pattern = "^strep$", replacement = "streptococcus", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^tachy$", replacement = "tachycardia", x = line_tokens)
  
  
  ################ 4 characters
  line_tokens <- gsub(pattern = "^afib$", replacement = "atrial fibrillation", x = line_tokens)
  line_tokens <- gsub(pattern = "^aftt$", replacement = "adult failure to thrive", x = line_tokens)
  line_tokens <- gsub(pattern = "^aicd$", replacement = "automatic implantable cardioverter defibrillator", x = line_tokens)
  line_tokens <- gsub(pattern = "^ards$", replacement = "adult respiratory distress syndrome", x = line_tokens)
  line_tokens <- gsub(pattern = "^ashd$", replacement = "atherosclerotic heart disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^asvd$", replacement = "arteriosclerotic vascular disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^ashd$", replacement = "atherosclerotic heart disease", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^cabc$", replacement = "coronary artery bypass surgery", x = line_tokens)
  line_tokens <- gsub(pattern = "^cabg$", replacement = "coronary artery bypass grafting", x = line_tokens)
  line_tokens <- gsub(pattern = "^ckd3$", replacement = "chronic kidney disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^crrt$", replacement = "continuous renal replacement therapy", x = line_tokens)
  line_tokens <- gsub(pattern = "^crrt$", replacement = "continuous renal replacement therapy", x = line_tokens)
  line_tokens <- gsub(pattern = "^cvas$", replacement = "cerebral vascular accident", x = line_tokens)
  line_tokens <- gsub(pattern = "^copd$", replacement = "chronic obstructive pulmonary disease", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^dens$", replacement = "odontoid process", x = line_tokens)
  line_tokens <- gsub(pattern = "^dmii$", replacement = "diabetes mellitus type ii", x = line_tokens)
  line_tokens <- gsub(pattern = "^dvts$", replacement = "Deep vein thrombosis", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^esld$", replacement = "end stage liver disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^esrd$", replacement = "end stage renal disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^etoh$", replacement = "effects of chronic alcohol", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^gerd$", replacement = "gastroesophageal reflux disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^gist$", replacement = "gastrointestinal stromal tumor", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^hcap$", replacement = "health care acquired pneumonia", x = line_tokens)
  line_tokens <- gsub(pattern = "^hlpd$", replacement = "hyperlipidaemia", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^iddm$", replacement = "insulin dependent diabetes mellitus", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^luto$", replacement = "lower urinary tract obstruction", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^meta$", replacement = "metastatic", x = line_tokens)
  line_tokens <- gsub(pattern = "^mrsa$", replacement = "methicillin resistant staphylococcus aureus", x = line_tokens)
  line_tokens <- gsub(pattern = "^mrsa$", replacement = "methicillin sensitive staphylococcus aureus", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^nash$", replacement = "nonalcoholic steatohepatitis", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^ptca$", replacement = "percutaneous transluminal coronary angioplasty", x = line_tokens)
  line_tokens <- gsub(pattern = "^pulm$", replacement = "pulmonary", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^rbdc$", replacement = "red blood cell", x = line_tokens)
  line_tokens <- gsub(pattern = "^resp$", replacement = "respiratory", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^scca$", replacement = "squamous cell cancer", x = line_tokens)
  line_tokens <- gsub(pattern = "^sdat$", replacement = "senile dementia of the alzheimer type", x = line_tokens)
  line_tokens <- gsub(pattern = "^sirs$", replacement = "systemic inflammatory response", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^t2dm$", replacement = "type ii diabetes mellitus", x = line_tokens)
  line_tokens <- gsub(pattern = "^tias$", replacement = "Transient ischemic attacks", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^ugib$", replacement = "upper gastrointestinal bleeding", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^utis$", replacement = "urinary tract infection", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^vasc$", replacement = "vascular", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^vdrf$", replacement = "ventilator dependent respiratory failure", x = line_tokens)
  
  
  ################ 3 characters
  line_tokens <- gsub(pattern = "^aaa$", replacement = "abdominal aortic aneurysm", x = line_tokens)
  line_tokens <- gsub(pattern = "^abd$", replacement = "abdominal", x = line_tokens)
  line_tokens <- gsub(pattern = "^aca$", replacement = "anterior cerebral artery", x = line_tokens)
  line_tokens <- gsub(pattern = "^acs$", replacement = "acute coronary syndrome", x = line_tokens)
  line_tokens <- gsub(pattern = "^adh$", replacement = "antidiuretic hormone", x = line_tokens)
  line_tokens <- gsub(pattern = "^aka$", replacement = "alcoholic ketoacidosis", x = line_tokens)
  line_tokens <- gsub(pattern = "^aki$", replacement = "acute kidney injury", x = line_tokens)
  line_tokens <- gsub(pattern = "^als$", replacement = "amyotrophic lateral sclerosis", x = line_tokens)
  line_tokens <- gsub(pattern = "^alz$", replacement = "alzheimers", x = line_tokens)
  line_tokens <- gsub(pattern = "^ami$", replacement = "acute myocardial infarction", x = line_tokens)
  line_tokens <- gsub(pattern = "^aml$", replacement = "acute myelogenous leukemia", x = line_tokens)
  line_tokens <- gsub(pattern = "^arf$", replacement = "acute respiratory failure", x = line_tokens)
  line_tokens <- gsub(pattern = "^ari$", replacement = "acute renal insufficiency", x = line_tokens)
  line_tokens <- gsub(pattern = "^atn$", replacement = "acute tubular necrosis", x = line_tokens)
  line_tokens <- gsub(pattern = "^avf$", replacement = "arteriovenous fistula", x = line_tokens)
  line_tokens <- gsub(pattern = "^avr$", replacement = "arteriovenous malformation", x = line_tokens)
  line_tokens <- gsub(pattern = "^avr$", replacement = "aortic valve replacement", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^bka$", replacement = "below knee amputation", x = line_tokens)
  line_tokens <- gsub(pattern = "^bil$", replacement = "bilateral", x = line_tokens)
  line_tokens <- gsub(pattern = "^bph$", replacement = "benign prostatic hyperplasia", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^cad$", replacement = "coronary artery disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^caf$", replacement = "chronic atrial fibrillation", x = line_tokens)
  line_tokens <- gsub(pattern = "^car$", replacement = "circulation arrest", x = line_tokens)
  line_tokens <- gsub(pattern = "^cas$", replacement = "carotid artery stenosis", x = line_tokens)
  line_tokens <- gsub(pattern = "^cbd$", replacement = "common bile duct", x = line_tokens)
  line_tokens <- gsub(pattern = "^chb$", replacement = "complete heart block", x = line_tokens)
  line_tokens <- gsub(pattern = "^chf$", replacement = "congestive heart failure", x = line_tokens)
  line_tokens <- gsub(pattern = "^ckd$", replacement = "chronic kidney disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^ckf$", replacement = "chronic kidney failure", x = line_tokens)
  line_tokens <- gsub(pattern = "^cki$", replacement = "chronic kidney insufficiency", x = line_tokens)
  line_tokens <- gsub(pattern = "^cll$", replacement = "chronic lymphocytic leukemia", x = line_tokens)
  line_tokens <- gsub(pattern = "^cml$", replacement = "chronic myelogenous leukemia", x = line_tokens)
  line_tokens <- gsub(pattern = "^cmt$", replacement = "charcot marie tooth", x = line_tokens)
  line_tokens <- gsub(pattern = "^cmy$", replacement = "cardiomyopathy", x = line_tokens)
  line_tokens <- gsub(pattern = "^cns$", replacement = "central nervous system", x = line_tokens)
  line_tokens <- gsub(pattern = "^crf$", replacement = "cardiac respiratory failure", x = line_tokens)
  line_tokens <- gsub(pattern = "^csf$", replacement = "cerebral spinal fluid", x = line_tokens)
  line_tokens <- gsub(pattern = "^cva$", replacement = "cerebral vascular accident", x = line_tokens)
  line_tokens <- gsub(pattern = "^cvd$", replacement = "cardiovascular disease", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^def$", replacement = "deficiency", x = line_tokens)
  line_tokens <- gsub(pattern = "^ddd$", replacement = "degenerative disc disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^dic$", replacement = "disseminated intravascular coagulopathy", x = line_tokens)
  line_tokens <- gsub(pattern = "^dis$", replacement = "disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^djd$", replacement = "degenerative joint disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^dlv$", replacement = "left ventricle dilated", x = line_tokens)
  line_tokens <- gsub(pattern = "^dka$", replacement = "diabetic ketoacidosis", x = line_tokens)
  line_tokens <- gsub(pattern = "^dmi$", replacement = "diabetes mellitus type i", x = line_tokens)
  line_tokens <- gsub(pattern = "^dm2$", replacement = "diabetes mellitus type ii", x = line_tokens)
  line_tokens <- gsub(pattern = "^dmz$", replacement = "diabetes mellitus", x = line_tokens)
  line_tokens <- gsub(pattern = "^dvt$", replacement = "deep vein thrombosis", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^fib$", replacement = "fibrillation", x = line_tokens)
  line_tokens <- gsub(pattern = "^ftt$", replacement = "failure to thrive", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^ger$", replacement = "gastroesophageal reflux", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^iia$", replacement = "type ii", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^hbp$", replacement = "high blood pressure", x = line_tokens)
  line_tokens <- gsub(pattern = "^hcc$", replacement = "hepatocellular carcinoma", x = line_tokens)
  line_tokens <- gsub(pattern = "^hem$", replacement = "hemorrage", x = line_tokens)
  line_tokens <- gsub(pattern = "^hep$", replacement = "hepatitis", x = line_tokens)
  line_tokens <- gsub(pattern = "^hhd$", replacement = "hypertensive heart disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^hit$", replacement = "heparin induced thrombocytopenia", x = line_tokens)
  line_tokens <- gsub(pattern = "^hld$", replacement = "hyperlipidemia", x = line_tokens)
  line_tokens <- gsub(pattern = "^hsv$", replacement = "herpes simplex virus", x = line_tokens)
  line_tokens <- gsub(pattern = "^htn$", replacement = "hypertensive", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^ica$", replacement = "internal carotid artery", x = line_tokens)
  line_tokens <- gsub(pattern = "^ich$", replacement = "intracerebral hemorrhage", x = line_tokens)
  line_tokens <- gsub(pattern = "^ihd$", replacement = "ischemic heart disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^itp$", replacement = "idiopathic thrombocytopenia purpura", x = line_tokens)
  line_tokens <- gsub(pattern = "^ivc$", replacement = "inferior vena cava", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^lft$", replacement = "left", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^mca$", replacement = "middle cerebral artery", x = line_tokens)
  line_tokens <- gsub(pattern = "^mds$", replacement = "myelodysplastic syndrome", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^neo$", replacement = "neoplasm", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^ocd$", replacement = "obsessive Compulsive disorder", x = line_tokens)
  line_tokens <- gsub(pattern = "^osa$", replacement = "obstructive sleep apnea", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^pcm$", replacement = "protein calorie malnutrition", x = line_tokens)
  line_tokens <- gsub(pattern = "^pea$", replacement = "pulseless electrical activity", x = line_tokens)
  line_tokens <- gsub(pattern = "^pna$", replacement = "pneumonia", x = line_tokens)
  line_tokens <- gsub(pattern = "^pph$", replacement = "primary pulmonary hypertension", x = line_tokens)
  line_tokens <- gsub(pattern = "^pte$", replacement = "pulmonary thrombo embolism", x = line_tokens)
  line_tokens <- gsub(pattern = "^pud$", replacement = "peptic ulcer disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^pul$", replacement = "pulmonary", x = line_tokens)
  line_tokens <- gsub(pattern = "^pvd$", replacement = "peripheral vascular disease", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^rds$", replacement = "respiratory distress syndrome", x = line_tokens)
  line_tokens <- gsub(pattern = "^rep$", replacement = "replacement", x = line_tokens)
  line_tokens <- gsub(pattern = "^rfa$", replacement = "respiratory failure", x = line_tokens)
  line_tokens <- gsub(pattern = "^rsv$", replacement = "respiratory syncytial virus", x = line_tokens)
  line_tokens <- gsub(pattern = "^rvr$", replacement = "rapid ventricular response", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^sbo$", replacement = "small bowel obstruction", x = line_tokens)
  line_tokens <- gsub(pattern = "^sle$", replacement = "systemic lupus erythematosus", x = line_tokens)
  line_tokens <- gsub(pattern = "^sma$", replacement = "superior mesenteric artery", x = line_tokens)
  line_tokens <- gsub(pattern = "^sss$", replacement = "sick sinus syndrome", x = line_tokens)
  line_tokens <- gsub(pattern = "^ste$", replacement = "st elevation", x = line_tokens)
  line_tokens <- gsub(pattern = "^svc$", replacement = "superior vena cava", x = line_tokens)
  line_tokens <- gsub(pattern = "^svt$", replacement = "supraventricular tachycardia", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^tbi$", replacement = "traumatic brain injury", x = line_tokens)
  line_tokens <- gsub(pattern = "^tia$", replacement = "transient ischemic attacks", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^ugi$", replacement = "upper gastrointestinal", x = line_tokens)
  line_tokens <- gsub(pattern = "^uti$", replacement = "urinary tract infection", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^vhd$", replacement = "valvular heart disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^vit$", replacement = "vitamin", x = line_tokens)
  line_tokens <- gsub(pattern = "^vre$", replacement = "vancomycin resistant enterococcus", x = line_tokens)
  
  
  ################ 2 characters
  line_tokens <- gsub(pattern = "^ad$", replacement = "alzheimer disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^af$", replacement = "atrial fibrillation", x = line_tokens)
  line_tokens <- gsub(pattern = "^ai$", replacement = "aortic insufficiency", x = line_tokens)
  line_tokens <- gsub(pattern = "^av$", replacement = "atrioventricular", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^ca$", replacement = "cancer", x = line_tokens)
  line_tokens <- gsub(pattern = "^ct$", replacement = "computer tomography", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^di$", replacement = "diabetes insipidus", x = line_tokens)
  line_tokens <- gsub(pattern = "^dl$", replacement = "diffuse large", x = line_tokens)
  line_tokens <- gsub(pattern = "^dm$", replacement = "diabetes mellitus", x = line_tokens)
  line_tokens <- gsub(pattern = "^dz$", replacement = "disease", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^es$", replacement = "end stage", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^gi$", replacement = "gastrointestinal", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^hd$", replacement = "heart disease", x = line_tokens)
  line_tokens <- gsub(pattern = "^hl$", replacement = "hyperlipidemia", x = line_tokens)
  line_tokens <- gsub(pattern = "^ho$", replacement = "heme oxygenase", x = line_tokens)
  line_tokens <- gsub(pattern = "^ht$", replacement = "hypertensive", x = line_tokens)
  line_tokens <- gsub(pattern = "^hx$", replacement = "history", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^le$", replacement = "lower extremity", x = line_tokens)
  line_tokens <- gsub(pattern = "^lt$", replacement = "left", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^mi$", replacement = "myocardial infarction", x = line_tokens)
  line_tokens <- gsub(pattern = "^ml$", replacement = "myelogenous leukemia", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^oa$", replacement = "osteoarthritis", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^pe$", replacement = "pulmonary embolism", x = line_tokens)
  line_tokens <- gsub(pattern = "^pn$", replacement = "pneumonia", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^rt$", replacement = "right", x = line_tokens)
  line_tokens <- gsub(pattern = "^rv$", replacement = "right ventricular", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^tb$", replacement = "tuberculosis", x = line_tokens)
  line_tokens <- gsub(pattern = "^t2$", replacement = "type ii", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^ue$", replacement = "upper extremity", x = line_tokens)
  
  line_tokens <- gsub(pattern = "^vp$", replacement = "ventricular fibrillation", x = line_tokens)
  line_tokens <- gsub(pattern = "^vp$", replacement = "ventriculoperitoneal", x = line_tokens)
  line_tokens <- gsub(pattern = "^vt$", replacement = "ventricular tachycardia", x = line_tokens)
  
  # return line
  return(line_tokens)
  
}











