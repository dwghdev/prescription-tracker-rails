# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Specialization.destroy_all

Specialization.create!([
  { 
    name: "Surgery",
    description: "
      Surgery is a mental or dental specialty that uses operative manual and
      instrumental techniques on a person to investigate or treat a pathological
      condition such as a disease or injury, to help improve bodily function,
      appearance, or to repair unwanted ruptured areas.
    "
  },
  { 
    name: "Internal Medicine",
    description: "
      Internal medicine is the medical specialty dealing with the prevention, diagnosis, and 
      treatment of internal diseases. 
      Doctors specializing in internal medicine are called internists, 
      or physicians (without a modifier) in Commonwealth nations. 
      Internists are skilled in the management of patients who are 
      undifferentiated or multi-system disease processes. 
    "
  },
  { 
    name: "Pediatrics",
    description: "Pediatrics is the branch of medicine that involves the medical care of infants, children, adolescent, and young adults."
  },
  { 
    name: "Emergency Medicine",
    description: "Emergency medicine is the medical specialty concerned with the care of illnesses or injuries requiring immediate medical attention."
  },
  { 
    name: "Family Medicine",
    description: "
      Family medicine is a medical specialty within primary care that provides continuing and 
      comprehensive health care for the individual and family across all ages, genders, diseases and parts of the body.
    "
  },
  { 
    name: "Psychiatry",
    description: "Psychiatry is the medical specialty devoted to the diagnosis, prevention, and treatment of mental disorders."
  },
  { 
    name: "Anesthesiology",
    description: "
      Anesthesiology, anaesthesiology, or anaesthesia is the medical specialty concerned with 
      the total perioperative care of patients before, during and after surgery.
    "
  },
  { 
    name: "Dermatology",
    description: "
      Dermantology is the branch of medicine dealing with the skin. 
      It is a specialty with both medical and surgical aspects.
    "
  },
  { 
    name: "Neurology",
    description: "Neurology is branch of medicine dealing with disorders of the nervous system."
  },
  { 
    name: "Cardiology",
    description: "Cardiology is a medicine specialty and a branch of internal medicine concerned with disorders of the heart."
  },
  { 
    name: "Orthopedics",
    description: "Orthopedic surgery or orthopedic is a branch of surgery concerned with conditions involving the musculoskeletal system"
  },
  { 
    name: "Obsterics and gynaecology",
    description: "
      Obsterics and gynaecology is the medical specialty that encompass 
      the two subspecialties of obsterics(covering pregnancy, childbirth, and the postpartum period) and
      gynecology(covering the health of the female reproductive system - vagina, uterus, ovaries, and breasts).
    "
  },
  { 
    name: "Radiology",
    description: "
      Radiology is a medical discipline that uses medical imaging to diagnose disease and 
      guide their treatment, within the bodies of humans and other animals.
    "
  },
  { 
    name: "Ophthalmology",
    description: "
      Ophthalmology is the study of medical conditions relating to the eye. 
      Ophthalmologist are doctors who specialize in the mediccal and surgical treatment of this organ.
    "
  },
  { 
    name: "Otolaryngology",
    description: "
      is a surgical subspecialty within medicine that deals with the surgical and 
      medical management of conditions of the head and neck.
    "
  },
  { 
    name: "General Surgery",
    description: "
      General surgery is a surgical specialty that focuses on alignmentary canal and abdominal contents including the esophagus,
      stomach, small intestine, large intestine, liver, pancreas, gallbladder, appendix, and bile ducts, and often the thyroid gland.
    "
  },
  { 
    name: "Oncology",
    description: "Oncoloy is a branch of medicine that deals with the prevention, diagnosis, and treatment of cancer."
  },
  { 
    name: "Pathology",
    description: "
      Pathology is the study of the causes and effects of disease or injury. 
      The world pathology also refers to the study of disease in general, 
      incorporating a wide range of biology research fields and medical practices.
    "
  },
  { 
    name: "Nuclear Medicine",
    description: "
      Nuclear medicine is specialized area of radiology that uses very small amounts of radioactive materials,
      or radioactive materials, or radiopharmaceuticals, to examine organs functions and structure.
    "
  },
  { 
    name: "Physical Theraphy",
    description: "
      Physical theraphy, also known as physiotherapy, is one of the medical professions. 
      It is provided by physical therapists who promote, maintain, or 
      restore health through physical examination, diagnosis, prognosis,
      patient education, physical invervention, rehabilitation, disease prevention, and health promotion. 
    "
  },
  { 
    name: "Plastic Surgery",
    description: "
      Plastic surgery is a surgical specialty involving the restoration, reconstruction, or alteration of the human body.
      It can be divided into two main categories: reconstructive surgery and cosmetic surgery.
    "
  },
  { 
    name: "Gastroenterology",
    description: "
      Gastroenterology is the study of the normal and diseases of the esophagus,
      stomach, small intestine, colon and rectum, pancreas, gallbladder, bile ducts and liver.
    "
  },
  { 
      name: "Urology",
      description: "Urology is a surgical specialty which deals with diseases of the male and female urinary tract and the male reproductive organs."
  },
  { 
    name: "Neurosurgery",
    description: "
      Neurosurgery or neurological surgery, known in common parlance as brain surgery, 
      is the medical specialty concerned with the surgical treatment of disorders which 
      affect any portion of the nervous system including the brain, spinal cord and peripheral nervous system.
    "
  },
  { 
    name: "Intensive Care Medicine",
    description: "
      Intensive care medicine, also called critical care medicine, 
      is a medical specialty that deals with serious or critical ill patients who have, 
      are at risk of, or are recovering from conditions that may be life-threatening.
    "
  },
  { 
    name: "Geriatrics",
    description: "
      Geriatrics, or geriatrics medicine, is a specialty that focuses on health care of elderly people.
      it aims to promote health by preventing and treating diseases and disabilities in older adults.
    "
  },
  { 
    name: "Primary Care",
    description: "
      Primary care is the day-to-day healthcare given by a health care provider. 
      Typically this provider acts as the first contact and principal point of continuing care 
      for patients within a healthcare system, and coordinates other specialist care that the patient may need.
    "
  },
  { 
    name: "Immunology",
    description: "Immunology is a branch of medicine and biology that covers the medical study of immune system in humans, animals, plants and sapient species."
  },
  { 
    name: "Nephrology",
    description: "Nephrology is the subspecialty of internal medicine that focuses on the diagnosis and treatment of diseases of the kidney."
  },
  { 
    name: "Endocrinology",
    description: "Endocrinology is branch of biology and medicine dealing with the endocrine system, its diseases, and its specific secretions known as hormones."
  },
  { 
      name: "Pulmonology",
      description: "Pulmonology, pneumology or pneumonology is a medical specialty that deals with disease involving the respiratory fact."
  },
  { 
    name: "Rheumatologist",
    description: "
      Rheumatologist is a branch of medicine devoted to the diagnosis and theraphy of rheumatic
      diseases. Physicians who have undergone formal training in rheumatology are called rheumatologist.
    "
  },
  { 
    name: "Cardiothoracic Surgery",
    description: "
      Cardiothoracic surgery, also known as thoracic surgery, 
      is field of surgery pertaining to organs in the thorax(chest), 
      including the heart and lungs.
    "
  },
  { 
    name: "Medical Genetics",
    description: "Medical genetics is the branch of medicine that involves the diagnosis and management of hereditary disorders."
  },
  { 
    name: "Occupational Medicine",
    description: "
      Occupational medicine, until 1960 called industrial medicine, 
      is the branch of medicine which is concerned with the maintenance of health in the workplace,
      including prevention and treatment of diseases and injuries, 
      with secondary objectives of maintaining and increasing productivity and social adjustment in the workplace
    "
  },
  { 
    name: "Clinical Pathology",
    description: "
      Clinical Pathology is a medical speciality that is concerned with the diagnosis of 
      disease based on the laboratory analysis of bodily fluids, such as blood, urine, and 
      tissue homogenates or extracts using the tools of chemistry, microbiology, hematology and molecular pathology.
    "
  },
  { 
    name: "Hematology",
    description: "
      Hematology is the study of blood disorders. Hematologist and 
      hematolopathologist are highly trained healthcare providers who
      specialize in diseases of the blood components. 
      These include blood and bone marrow cells.
    "
  },
  { 
    name: "Public Health",
    description: '
      Public health has been defined as "the science and art of preventing disease",
      prolonging life and improving quality of life though organized efforts and 
      informed choices of society, organizations(public and private), communities and individuals.
      The public can be as small as handful of people or as a village or an entire. 
      The concept of health takes into account physical, psychological, and social well-being.
    '
  },
  { 
    name: "Gynaecology",
    description: "
      Gynaecology is the area of medicine that involves the treatment of women's diseases, 
      especially those of the reproductive organs. 
      It is often paired with the field of obsterics, 
      forming the combined area of obsterics and gynecology(OB-GYN).
    "
  },
  { 
    name: "Infectious Diseases",
    description: "
      A subspecial of internal medicine focused on dealing with the diagnosis and 
      treatment of communicable diseases of all types including in all organs in any age.
    "
  },
  { 
    name: "Preventive Healthcare (Prophylaxis)",
    description: "
      Prophylaxis is defined as a process of guarding the development of 
      a specific disease by a treatment or action that affects pathogenesis.
    "
  },
  { 
    name: "Vascular Surgery",
    description: "Vascular surgeons manage veins and arteries in every part of the body except the brain and heart."
  },
  { 
    name: "Child and Adolescent Psychiatry",
    description: "
      a branch of psychiatry that focuses on the diagnosis, treatment, and 
      prevention, of mental disorders in children, adolescent and their families.
      It investigates the biopsychosocial factors that influence the development and
      course of psychiatric disorders and treatment responses to various interventions.
    "
  },
  { 
    name: "Colorectal Surgery",
    description: "
      Colorectal surgery is a field in medicine dealing with disorders of the rectum, anus, and 
      colon. The field is also known as proctology, but this term is now used infrequently within medicine and
      is most often employed to identity practices relating to the anus and rectum in particular.
    "
  },
  { 
    name: "Sports Medicine",
    description: "
      sports medicine deals with physical fitness and the treatment and 
      prevention of injuries related to sports and exercise. 
      Although most sports teams have employed team physicians for many years,
      it is only since late 20th century that sport medicine 
      emerged as a distinct field of health care.
    "
  },
  { 
    name: "Pediatric Hematology Oncology",
    description: "
      A pediatric hematologist/oncologist is a physician who has special traning and 
      experience to diagnose and treat blood disorders and 
      cancers in children, teens, and young adults.
    "
  },
  { 
    name: "Clinical Chemistry",
    description: "
      Area of chemistry that generally concerned with analysis of bodily fluids for diagnostic and 
      therapeutic purposes. It is applied form of biochemistry(not to be confused with medical chemistry, 
      which involves basic research for drug development).
    "
  },
  { 
    name: "Orax and Maxillofacial",
    description: "
      Maxillofacial surgeons, sometimes called oral and 
      maxillofacial surgeons, are trained to handle a wide variety of conditions and 
      injuries that affect the head, neck, mouth, jaw, and face.
    "
  },
  { 
    name: "Forensic Pathology",
    description: "
      Forensic pathology is pathology that focuses on determining the cause of death by examining a corpse. 
      A post mortem examination is performed by a medical examiner or forensic pathologist, 
      usually during the investigation of criminal law cases and civil law cases in some jurisdictions.
      Coroners and medical examiner are also frequently asked to confirm the identity of remains.
    "
  },
  { 
    name: "Medical Microbiology",
    description: "
      A medical microbiologist studies characteristics of pathogens, 
      their modes of transmission, mechanisms of infection and growth. 
      The academic qualification as a clinical/Medical Microbiologist 
      in a hospital or medical research centre generally requires 
      a Masters in Microbiology along with Ph.D. in any of the 
      life-sciences (Biochem, Micro, Biotech, Genetics, etc).
    "
  }
])

p "Created #{Specialization.count} Specializations"
