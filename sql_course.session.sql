CREATE TABLE job_applied (
                        job_id INT,
                        application_sent_date DATE,
                        custom_resume BOOLEAN,
                        resume_file_name TEXT,
                        cover_letter_sent BOOLEAN,
                        cover_letter_file_name VARCHAR (255),
                        status VARCHAR (50)
                        );

---
INSERT INTO job_applied
            (job_id,
            application_sent_date,
            custom_resume,
            resume_file_name,
            cover_letter_sent,
            cover_letter_file_name,
            status)
VALUES      (1,
            '2024-02-01',
            true,
            'resume_01.pdf',
            true,
            'cover_letter_01.pdf',
            'submitted'),
            (2,
            '2024-02-02',
            false,
            'resume_02.pdf',
            false,
            NULL,
            'interview scheduled'),
            (3,
            '2024-02-03',
            true,
            'resume_03.pdf',
            true,
            'cover_letter_03.pdf',
            'ghosted'),
            (4,
            '2024-02-04',
            true,
            'resume_04.pdf',
            false,
            NULL,
            'submitted'),
            (5,
            '2024-02-05',
            false,
            'resume_05.pdf',
            true,
            'cover_letter_05.pdf',
            'rejected');

SELECT*
FROM job_applied

--
ALTER TABLE job_applied
ADD contact VARCHAR(50)
--

UPDATE job_applied
set contact = 'Erlich Bachman'
WHERE job_id = 1;

UPDATE job_applied
set contact = 'Dines Cugtai'
WHERE job_id = 2;

UPDATE job_applied
set contact = 'Betram Gilfoyle'
WHERE job_id = 3;

UPDATE job_applied
set contact = 'Jian Yang'
WHERE job_id = 4;

UPDATE job_applied
set contact = 'Big Head'
WHERE job_id = 5;

---
ALTER TABLE job_applied
rename column contact to contact_name
