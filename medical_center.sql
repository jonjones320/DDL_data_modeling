-- Design the schema for a medical center.
-- - A medical center employs several doctors
-- - A doctors can see many patients
-- - A patient can be seen by many doctors
-- - During a visit, a patient may be diagnosed to have one or more diseases.

Tables: 
    doctors, patients, disease, doctors/patients
    
- doctors: 
    id, 
    first_name, 
    last_name
- patients: 
    id, 
    first_name, 
    last_name, 
    diseases
- diseases: 
    id, 
    disease
- caretaking: 
    id,
    doctor_id, 
    patient_id